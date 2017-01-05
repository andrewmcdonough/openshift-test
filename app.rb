require "sinatra"
require "mongo"
require "pry"

class App < Sinatra::Application
  get "/" do
    mongodb_uri = ENV["DATABASE_URI"]
    output = "openshift: #{ENV["APP_GREETING"]}<br />"
    client = Mongo::Client.new(mongodb_uri)
    output += "Mongo collectionss: #{client.collections}"
    output
  end

  get "/env" do
    output = "<pre>"
    ENV.sort.each { |k, v| output += "#{k} => #{v}<br />" }
    output += "</pre>"
  end
end
