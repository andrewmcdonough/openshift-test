require "sinatra"

class App < Sinatra::Application
  get "/" do
    "openshift!"
  end
end
