require 'rspec/core'
require 'rspec/core/rake_task'
require "./app/main.rb"
require "sinatra/activerecord/rake"
task :default => :spec

desc "Run our Spec"
RSpec::Core::RakeTask.new(:spec)

desc "Fill database with sample data"
task "populate" do
  make_resturants
end

def make_resturants
  res = Resturant.create!(:name => "Sakura Sushi Resturant", :location => "Prannerstrasse 1, 8033, Muenchen", :logo_url => "http://logopond.com/logos/24de114a009528757de3ce0a3495259b.png")
end
