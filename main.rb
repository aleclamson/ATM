require_relative 'user'

print "Enter PIN now: "
pin = $stdin.gets.chomp
users = User.new
puts users.find_user(pin)

#name and purposre of project 
#set up
#three questions