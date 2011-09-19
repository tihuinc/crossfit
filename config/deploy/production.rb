role :web,          "50.56.113.102"
role :app,          "50.56.113.102"
role :db,           "50.56.113.102", :primary => true # migrations run from here

set :branch, "master"
set :use_sudo, true
