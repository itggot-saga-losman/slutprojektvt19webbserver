require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'byebug'
require 'json'
require 'sinatra/cross_origin'
require_relative 'model.rb'
enable :sessions

include Model

configure do
    enable :cross_origin
end

configure do 

    set :db, SQLite3::Database.new("Db/main.db")
end

before do
    response.headers['Access-Control-Allow-Origin'] = '*'
end

# Display landing page
#
get('/') do
    content_type :json
    db = settings.db
    db.results_as_hash = true

    all_clothes = db.execute("SELECT * FROM items")

    return all_clothes.to_json
end


# Attempts login and updates the session
#
# @param [String] username, The username
# @param [String] password, The password
#
# @see Model#login
post('/api/login') do
    body = request.body.read
    params = JSON.parse(body)
    

    content_type :json
    db = settings.db
    db.results_as_hash = true
    
    result = db.execute("SELECT * FROM users WHERE Username = (?)", params['Username'])
    
    if params["username"] == result[1]
        result = {
            success: true,
            user_id: result["UserID"]
        }.to_json
    else
        return {
            success: false,
        }.to_json
    end
    return result
end
