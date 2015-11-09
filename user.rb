class User

	attr_accessor :users

	def initialize
		@data = File.read('users.txt')
		@users = @data.split("\n").map { |line| line.split(',') }
	end

	def info
		print "#{@users}"
	end

	def find_user pin
		@users.index { |user| user[1].eql?(pin) }
	end

end