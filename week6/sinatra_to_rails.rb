get "/iampath" do 
  # I AM ACTION
end


# config/routes.rb
get "/iampath" => "welcome#i_am_action_name"

# app/controllers/welcome_controller.rb

def i_am_action_name
  # I am action
end