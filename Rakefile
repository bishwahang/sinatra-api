require "./app/main.rb"
require "sinatra/activerecord/rake"

desc "Fill database with sample data"
task "db:populate" do
  require 'faker'
  Resturant.delete_all
  make_resturants
end

def make_resturants
  # names = [{ :name => "Taverne Diogenis", :location => "Herzog-Wilhelm-Straße 7", :logo_url => "http://t1.gstatic.com/images?q=tbn:ANd9GcQrZArbwyRxp8XQ-UWEjUiWhe1GFvONX34V9SywQsnNRoec3xxsST5bTg"},
  #          { :name => "Pakistani", :location => "maximilianstrasse 9", :logo_url => "http://t3.gstatic.com/images?q=tbn:ANd9GcSquAMm8f53DgO9VPxu3h2qLQzVgGLGjx2IbTYXx-WOiPmqVzHaZqfspxc"},
  #          { :name => "Holy Moly Burger", :location => "Sonnerstrasse", :logo_url => "http://cdn-img.easyicon.net/png/6/648.png" },
  #          { :name => "Sakura Sushi Resturant", :location => "Prannerstrasse 1, 8033, Muenchen", :logo_url => "http://logopond.com/logos/24de114a009528757de3ce0a3495259b.png" }
  # ]
  names = %w"burger deeba dnd greek losteria"
  names.each do |e|
    Resturant.create!(:name => "#{e.capitalize}'s Kitchen", :location => "#{Faker::Address.street_address}, Munich", :logo_url => get_logo_url(e))
  end
end

def get_logo_url(name)
  default_logo = "https://experteer-lunch-app.herokuapp.com"
  # default_logo = "http://localhost:4567"
  "#{default_logo}/images/#{name}"
end
