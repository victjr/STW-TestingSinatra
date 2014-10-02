# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'
require 'sinatra/flash'

require './configure'

enable :sessions

class FriendsPopular
  
  def test_username(client, name)
    client.user? name
  end

  def test_friends(client, name)
    client.user(name).friends_count
  end
end


#********************************************************************************
#********************************************************************************

get '/' do
  @twitter_username = ''
  #@friends = Hash.new
  erb :index
end

#********************************************************************************

post '/' do
  
  client = my_twitter_client() 
  @twitter_username = params[:user]

  
  if (@twitter_username == '')
    flash[:error_vacio] = "El campo de usuario no puede estar vacio"
  end

  if (client.user? @twitter_username)
    @friends = Hash.new
    twitter_follower = client.friends(@twitter_username).take(50)
    @friends = twitter_follower.map { |i| [i.name , i.followers_count]}.sort_by! {|k,v| -v}
  
  else
    flash[:error_existe] = "No existe ese usuario en Twitter"     
  end
  
  erb :index
end

#********************************************************************************
#********************************************************************************


