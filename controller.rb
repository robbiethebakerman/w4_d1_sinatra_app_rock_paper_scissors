require("sinatra")
require("sinatra/contrib/all") if development?
require("pry-byebug")

get "/" do
  "Hello"
end
