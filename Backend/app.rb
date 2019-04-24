require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'json'
require 'sinatra/cross_origin'
enable :sessions

configure do
    enable :cross_origin
end
before do
    response.headers['Access-Control-Allow-Origin'] = '*'
end


get('/') do
    content_type :json
    db = SQLite3::Database.new("Db/main.db")
    db.results_as_hash = true

    all_clothes = db.execute("SELECT * FROM items")

    # posts_classic = db.execute("SELECT Password FROM users WHERE Username = ?", "Sagoos")

    return all_clothes.to_json
end