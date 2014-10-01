ENV['RACK_ENV'] = 'test'
require 'test/unit'
require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

decribe "Test twitter.rb" do
	before :all do
		@usuario = "DeboraMpb"
end
	

end
