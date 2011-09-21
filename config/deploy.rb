require 'capistrano/ext/multistage'
require 'bundler/capistrano'

set :stages, %w(production)

set :application, "crossfit"
set :repository,  "git@github.com:tihuinc/crossfit.git"
set :branch, ENV['BRANCH'] || 'master'
set :scm, 'git'

set :user, 'ubuntu'
set :use_sudo, false

set(:rails_env) { "#{stage}" } 

namespace :deploy do

  namespace :gate do
    task :default do
      if "#{stage}" == "production"
        stg = CLI.ui.ask "Which environment are you deploying to again? "
        unless stg == "#{stage}"
          puts "I am not convinced, sorry."
          exit(1)
        end
      end
    end

    task :schema do
      migrations = `git diff --name-only #{current_revision}..#{branch} db/migrate`

      if migrations.length > 0
        question =  "It looks like there are pending migrations in this changeset:\n"
        question << migrations + "\n"
        question << "Are you sure you want to deploy without migrations (y/n)?"
        answer = CLI.ui.ask(question)

        unless answer =~ /^y(es)?/i
          puts "Deploy aborted."
          exit(-1)
        end
      end
    end
  end

  before "deploy", "deploy:gate"
  before 'deploy', 'deploy:gate:schema'
  before "deploy:migrations", "deploy:gate"


  # restart the app
  task :restart, :roles => [:app] do
    run "touch #{current_path}/tmp/restart.txt"
  end

  set :database_yml,       "config/database.yml"
  depend :remote, :file, "#{shared_path}/#{database_yml}"

  desc "Setup deployment configuration"
  task :setup_config do
    [database_yml].each do |conf_file|
      run %Q{ rm -f #{latest_release}/#{conf_file} && \
        ln -s #{shared_path}/#{conf_file} #{latest_release}/#{conf_file} }
    end
  end

  after "deploy:update_code", "deploy:setup_config"
end
