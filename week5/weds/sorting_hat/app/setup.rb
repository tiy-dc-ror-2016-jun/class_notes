require "bundler/setup"
require "sinatra/base"
require "pry"
require "active_record"
require "yaml"

env = ENV["RACK_ENV"] || "development"

config= YAML.load_file("./config/database.yml")

ActiveRecord::Base.establish_connection(config[env])

Dir.glob("./app/models/*.rb").each do |file_name|
  require file_name
end
