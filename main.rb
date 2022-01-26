require 'sinatra'

get "/home" do
    now = Time.now
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    day = weekdays[now.wday]
    return "Happy #{day}!"
end