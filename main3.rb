require 'sinatra'
require 'sinatra/reloader'

helpers do
  def strong(s)
    "<strong>#{s}</strong>"
  end
end

before '/*' do
  @author = "indou"
end

after '/about' do
  logger.info "about page displayed successfully"
end

after do
  logger.info "page displayed successfully"
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
