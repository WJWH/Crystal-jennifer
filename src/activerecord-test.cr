require "json"
require "jennifer"
require "jennifer_sqlite3_adapter"
require "kemal"
require "./models/*"
require "./views/*"

Jennifer::Config.configure do |conf|
  conf.adapter = "sqlite3"
  conf.host = "."
  conf.db = "test.db"
end

module Activerecord::Test 
  get "/" do |ctx|
    posts = Post.all.order(id: :desc)
    render "src/views/post.ecr", "src/views/layouts/layout.ecr"
  end
  
  post "/" do |ctx|
    Post.create(title: ctx.params.body["title"], content: ctx.params.body["content"])
    posts = Post.all.order(id: :desc)
    render "src/views/post.ecr", "src/views/layouts/layout.ecr"
  end
 
  post "/reset" do |ctx|
    Jennifer::Adapter.adapter.truncate(User)
    Jennifer::Adapter.adapter.truncate(Post)
    posts = [] of Post
    render "src/views/post.ecr", "src/views/layouts/layout.ecr"
  end

  Kemal.run
end
