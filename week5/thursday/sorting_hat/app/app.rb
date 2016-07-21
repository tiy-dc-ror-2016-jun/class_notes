require "./app/setup"

class Webapp < Sinatra::Base
  # YOU NEED DIS
  set :public_folder, File.dirname(__FILE__) + '/assets'
  # AND DIS
  use Rack::MethodOverride


  get "/" do
    @users = User.all

    erb :"index.html"
  end

  get "/users/:id/edit" do
    @user = User.find(params["id"])
    erb :"edit_user.html"
  end

  patch "/users/:id" do
    @user = User.find(params["id"])
    @user.update(params["user"])

    redirect to('/')
  end

  post "/users" do
    User.create(params["user"])

    redirect to('/')
  end

  post "/pick" do
    @user = User.all.sample
    @user.record_pick!
    erb :"pick.html"
  end

  run! if app_file == $PROGRAM_NAME
end
