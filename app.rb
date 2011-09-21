# coding: utf-8

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get '/:name.css' do
  # content_type 'text/css', :charset => 'utf-8'
  scss :"#{params[:name]}"
end

get '/script.js' do
  coffee :script
end

get '/' do
  haml :index
end
