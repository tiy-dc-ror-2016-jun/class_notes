require "./app/setup"

class Webapp < Sinatra::Base

  get "/" do
    @users = User.all

    erb :"index.html"
  end

  post "/users" do
    User.create(params["user"])

    redirect to('/')
  end

  run! if app_file == $PROGRAM_NAME
end
