require "sinatra"
require "mongo"
require "pry"

class App < Sinatra::Application
  get "/" do
    mongodb_uri = ENV["MONGODB_URI"]
    output = "openshift: #{ENV["APP_GREETING"]}"
    client = Mongo::Client.new(mongodb_uri)
    output += "Mongo databases: #{client.list_databases}"
    output
  end
end
