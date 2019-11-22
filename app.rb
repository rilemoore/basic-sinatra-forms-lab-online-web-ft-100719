require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    if(params.name =="")
      redirect "/newteam"
    else
      @team = params
      erb :team
    end
    
  end

end
