require_relative 'user'
require_relative 'console'
require_relative 'interface'

choice = ARGV[0]
if choice.eql?("console")
	interface = Console.new
else
	interface = Interface.new
end
interface.show