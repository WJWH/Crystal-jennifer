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
  
  
  Kemal.run
end
