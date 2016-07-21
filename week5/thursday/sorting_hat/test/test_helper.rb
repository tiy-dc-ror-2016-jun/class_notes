
# This is important, do not remove, and ensure it's included in every test or
# ensure this file is included
ENV["RACK_ENV"] = "test"


require "bundler/setup"
require "pry"

require "minitest/autorun"
require "rack/test"

# Project requires
Dir.glob("./app/**/*.rb").each { |file| require file }
