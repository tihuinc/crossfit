class Rubyurl
  include HTTParty
  base_uri 'graph.facebook.com'

  def self.shorten( oath_dump)
   raise "dump: #{oath_dump}"
    post( '/me/feed', :body => { :message=> "test from rails", :access_token => token } )
  end
end