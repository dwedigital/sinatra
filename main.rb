require 'sinatra'

get "/home" do
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    day = weekdays[Time.now.wday]
    return "Happy #{day}!"
end