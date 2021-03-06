ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'

require_relative '../twitter.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end


describe "Test Sinatra" do
	before :all do
		@twitter_username = FriendsPopular.new
		@client = my_twitter_client()
		@u1 = "DeboraMpb"
		@u2 = "!!!"
	end

	it "El nombre de usuario debe ser correcto" do
		assert @twitter_username.test_username(@client,@u1)
	end
=begin
	it "El número de usuarios a consultar debe ser menor o igual que 10" do
		assert_equal 10, @client.friends(@u1).take(10)
	end
=end
	it "El usuario no tiene tantos amigos" do
		refute_equal 2, @twitter_username.test_friends(@client,@u1)
	end

	it "El usuario no tiene amigos" do
		assert @twitter_username.test_friends(@client,@u1)
	end

	it "No existe el usuario" do
		refute @twitter_username.test_username(@client, @u2)
	end

	it "Cargar pagina en el servidor" do
		get '/'
		assert last_response.ok?
	end

	it "El titulo de la pagina es Sistemas y Tecnologias Web" do
		get '/'
		assert last_response.body.include?("<title>Sistemas y Tecnologias Web</title>"), "El titulo debe ser 'Sistemas y Tecnologias Web'"
	end

	it "Hay un formulario donde se pregunte el nombre de usuario " do
		get '/'
		assert last_response.body.include?("Introduzca un usuario de Twitter"), "El body debe contener usuario de twitter"
	end
end

