require 'sinatra'
require 'json'


get '/' do
  content_type :json
  return {:message => "Howdy, jughead"}.to_json
end
get '/sushi.json' do
  content_type :json
  return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
end
