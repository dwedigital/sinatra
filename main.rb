require 'sinatra'

get "/home" do
 time = Time.now.strftime("%d/%m/%Y %H:%M")
 return time
end