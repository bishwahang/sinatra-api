require "./app/main.rb"
require "sinatra/activerecord/rake"

desc "Fill database with sample data"
task "db:populate" do
  make_resturants
end

def make_resturants
  res = Resturant.create!(:name => "Sakura Sushi Resturant", :location => "Prannerstrasse 1, 8033, Muenchen", :logo_url => "http://logopond.com/logos/24de114a009528757de3ce0a3495259b.png")
end
