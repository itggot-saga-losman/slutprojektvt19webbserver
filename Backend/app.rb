get('/api/posts') do
    db = settings.db
    db.results_as_hash = true
    
    posts_classic = db.execute("SELECT * FROM posts WHERE UserId = (?)", session[:user])
    return posts_classic.to_json
end