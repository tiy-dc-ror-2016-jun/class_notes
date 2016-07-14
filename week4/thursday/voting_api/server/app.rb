ENV["RACK_ENV"] ||= 'development'

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"

require "securerandom"
require_relative "database_connection"
require_relative "lib/adventure"

class AdventureGame < Sinatra::Base

  before do
    content_type "application/json"
  end

  post "/login" do
    token = SecureRandom.hex

    User.create(token: token)

    {token: token}.to_json
  end

  post "/votes" do
    current_user = User.where(token: params[:token]).first

    vote = Vote.create(user_id: current_user.id, choice: params["name"])

    vote.to_json
  end

  get "/votes" do
    votes = Vote.all

    votes.to_json
  end

  run! if app_file == $PROGRAM_NAME
end
