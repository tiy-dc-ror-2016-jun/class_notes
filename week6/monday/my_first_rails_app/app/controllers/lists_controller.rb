class ListsController < ApplicationController

  def index
    # These actions are the do..end from sinatra. Your same code goes here.
    # @list = List.find_by(name: params[:name])

    # Render a specfic view from app/views/lists call "special_case"
    # ie: app/views/lists/special_case.html.erb
    render :special_case
  end

  def show
    # I added this to cause better errors to blow up in this specfic context.
    # fff

    # Render text outright versus looking up a view in the views directory
    render text: "<h1> I am #{params["name"].reverse} </h1>"
  end

end
