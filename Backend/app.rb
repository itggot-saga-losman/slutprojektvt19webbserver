require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'byebug'
require 'json'
require 'sinatra/cross_origin'
enable :sessions

configure do
    enable :cross_origin
end

configure do 

    set :db, SQLite3::Database.new("Db/main.db")
end

before do
    response.headers['Access-Control-Allow-Origin'] = '*'
end


get('/') do
    content_type :json
    db = settings.db
    db.results_as_hash = true

    all_clothes = db.execute("SELECT * FROM items")

    return all_clothes.to_json
end

post('/api/login') do
    body = request.body.read
    params = JSON.parse(body)
    

    # content_type :json
    # db = settings.db
    # db.results_as_hash = true
    # byebug
    # result = db.execute("SELECT * FROM users WHERE Username = (?)", params['Username'])
    if params["username"] == "Kalle"
        return {
            success: true,
            user_id: 4
        }.to_json
    else
        return {
            success: false,
        }.to_json
    end
end