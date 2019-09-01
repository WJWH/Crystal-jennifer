require "json"
require "jennifer"
require "jennifer_sqlite3_adapter"

Jennifer::Config.configure do |conf|
  conf.adapter = "sqlite3"
  conf.host = "."
  conf.db = "test.db"
end

class Post < Jennifer::Model::Base
  with_timestamps
  mapping(
    id: Primary32, # is an alias for Int32? primary key
    title: String,
    content: String,
    created_at: Time?,
    updated_at: Time?
  )
end

module Activerecord::Test 
  puts "biep!"
  Post.create(title: "abc", content: "Hello!")
  Post.create(title: "def", content: "Hello back!")
  posts = Post.all
  posts.each do |post|
    p post
  end
end
