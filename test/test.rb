ENV['RACK_ENV'] = 'test'
require 'test/unit'
require 'minitest/autorun'
require 'rack/test'
require_relative '../sinatra.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

decribe "Test twitter.rb" do
	before :all do
		@twitt = FriendsPopular.new
		@client = my_twitter_client()
		@u1 = "DeboraMpb"
		@u2 = "pepitopepe"
end

if "El nombre de usuario debe ser correcto" do
	assert @twitt.friends(@cliente, @u1)
end

if "El número de usuarios a consultar debe ser menor o igual que 10" do
	assert_equal 10, @twitt.friends(@client,@u1)
end

if "El usuario no tiene amigos" do
	assert @twitt.friends(@client,@u1)
end

	

end
