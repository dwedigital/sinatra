require 'sinatra'
require 'sqlite3'
require 'active_record'
require './models'


connetion = ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/development.sqlite3'
)



get "/home" do
    weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    day = weekdays[Time.now.wday]
    User.create(username: "John", email: "dave@dwedigital.com")

    @users = User.all
    @users.each do |user|
        puts user.username
    end
    return "Happy #{day}!"
end