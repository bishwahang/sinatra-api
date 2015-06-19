require 'sinatra'
require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class User < ActiveRecord::Base
end

class Resturant < ActiveRecord::Base
  validates :name,     presence: true, length: { maximum: 100 }
  validates :location, presence: true, length: { maximum: 255 }
end

get '/' do
  content_type :json
  return {:message => "Howdy, jughead"}.to_json
end
get '/sushi.json' do
  content_type :json
  return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
end

get '/resturants/:id' do
  @resturant = Resturant.find(params[:id])
  content_type :json
  return { :result => @resturant }.to_json
end

get '/resturants' do
  content_type :json
  return { :result => Resturant.all.to_json }.to_json
end

post '/resturants' do
  payload = JSON.parse(request.body.read)
  payload = payload.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
  @resturant = Resturant.new(payload[:resturant])
  if @resturant.save!
    content_type :json
    redirect "resturants/#{@resturant.id}"
  else
    content_type :json
    return { :status => "error" }.to_json
  end
end

get '/defaultlogo' do
  content_type 'image/png'
  filename = "public/images/default_logo.png"
  redirect 404 unless File.readable?(filename)
  send_file filename
end
