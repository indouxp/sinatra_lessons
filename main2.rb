require 'sinatra'
require 'sinatra/reloader'

before do
  @author = "indou"
end

get '/' do
  @title = "the index"
  @contents = 'main content by ' + @author
  erb :index
end

get '/about' do
  @title = 'about'
  @contents = 'this page is.. corded by ' + @author
  @email = 'indou@gmail.com'
  erb :about
end
