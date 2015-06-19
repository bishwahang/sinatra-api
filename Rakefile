require "./app/main.rb"
require "sinatra/activerecord/rake"

desc "Fill database with sample data"
task "db:populate" do
  require 'populator'
  require 'faker'
  Resturant.delete_all
  make_resturants
end

def make_resturants
  names = [ { :name => "Taverne Diogenis", :location => "Herzog-Wilhelm-Straße 7", :logo_url => "default_logo.png"},
            { :name => "Pakistani", :location => "maximilianstrasse 9", :logo_url => "http://t3.gstatic.com/images?q=tbn:ANd9GcSquAMm8f53DgO9VPxu3h2qLQzVgGLGjx2IbTYXx-WOiPmqVzHaZqfspxc"},
            { :name => "Holy Moly Burger", :location => "Sonnerstrasse", :logo_url => "http://cdn-img.easyicon.net/png/6/648.png" } ]
  res = Resturant.create!(:name => "Sakura Sushi Resturant", :location => "Prannerstrasse 1, 8033, Muenchen", :logo_url => "http://logopond.com/logos/24de114a009528757de3ce0a3495259b.png")
  names.each do |e|
    Resturant.create!(:name => e[:name], :location => e[:location], :logo_url => e[:logo_url])
  end
  Resturant.populate 20 do |res|
    res.name = Faker::Name.name
    res.location = Faker::Address.street_address
    res.logo_url = "image/default_logo.png"
  end
end
