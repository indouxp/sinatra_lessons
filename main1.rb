require 'sinatra'
require 'sinatra/reloader'

=begin
get '/hello/from/*/to/*' do |f, l|
  "hello #{f} to #{l}!"
end
=end

get %r{/users/([0-9]+)$} do |uid|
  "hello #{uid}"
end
