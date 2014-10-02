require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
  # This message won't be seen until the NEXT Web request that accesses the flash collection
  flash[:blah] = "You were feeling blah at #{Time.now}."

  "#{flash[:blah]}"
  # Accessing the flash displays messages set from the LAST request
  "Feeling blah again? That's too bad. #{flash[:blah]}"
end