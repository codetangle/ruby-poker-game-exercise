require './Table.rb'

class Engine
	#Initializes the table
	def initialize
		@table = Table.new(10)
    @table_live = true
	end

	def start
		@table.run()
	end
end

engine = Engine.new()
engine.start()