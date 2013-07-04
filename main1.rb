require 'sinatra'
require 'sinatra/reloader'

get '/hello/from/*/to/*' do |f, l|
  "hello #{f} to #{l}!"
end
