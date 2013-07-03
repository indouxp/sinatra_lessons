require 'sinatra'
require 'sinatra/reloader'

=begin
get '/hello/:name' do
  "hello #{params[:name]}!"
end
=end

get '/hello/:fname/:lname' do |f, l|
  "hello #{f} #{l}!"
end
