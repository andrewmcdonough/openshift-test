require "sinatra"

class App < Sinatra::Application
  get "/" do
    "openshift: #{ENV["APP_GREETING"]}"
  end
end
