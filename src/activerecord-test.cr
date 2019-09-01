require "json"
require "jennifer"
require "jennifer_sqlite3_adapter"

Jennifer::Config.configure do |conf|
  conf.adapter = "sqlite3"
  conf.host = "."
  conf.db = "test.db"
end

module Activerecord::Test 
  puts "biep!"
  
end
