require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    binding.pry
    if(params.name =="")
      redirect "/newteam"
    else
      @team = params
    end
    erb :team
  end

end
