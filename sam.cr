require "sam"
require "json"
require "jennifer"
require "jennifer/sam"
require "jennifer_sqlite3_adapter"


Jennifer::Config.configure do |conf|
  conf.adapter = "sqlite3"
  conf.host = "."
  conf.db = "test.db"
end

# Here you can define your tasks
# desc "with description to be used by help command"
# task "test" do
#   puts "ping"
# end

Sam.help
