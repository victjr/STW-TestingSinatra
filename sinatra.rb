# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'
require 'sinatra/flash'

require './configure'

#********************************************************************************
#********************************************************************************

get '/' do
  
  @twitter_username = ''
  @friends = Hash.new
  erb :sinatra
end

#********************************************************************************

post '/' do
  
  client = my_twitter_client() 
  @twitter_username = params[:user]

  
  if (@twitter_username == '')
    flash[:error1] = "El campo de usuario no puede estar vacio"
  
  elsif (client.user? @twitter_username)
    twitter_follower = client.friends(@twitter_username).take(50)
    @friends = Hash.new
    @friends = twitter_follower.map { |i| [i.name , i.followers_count]}
    
    @friends = @friends.sort_by! {|k,v| -v}    
    
  else
    flash[:error] = "No existe ese usuario en Twitter"   
  end
  
  erb :sinatra
end

#********************************************************************************
#********************************************************************************


