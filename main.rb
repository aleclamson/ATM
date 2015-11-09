require_relative 'user'

print "Enter PIN now: "
pin = $stdin.gets.chomp
users = User.new
puts users.find_user(pin)