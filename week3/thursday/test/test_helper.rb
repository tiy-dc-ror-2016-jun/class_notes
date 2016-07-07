require "bundler/setup"
require "active_record"
require 'minitest/autorun'
require 'minitest/pride'
require './group'
require './student'
require './setup_migration'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "test.sqlite3"
)

begin
  SetupMigration.migrate(:down)
rescue
end
SetupMigration.migrate(:up)
