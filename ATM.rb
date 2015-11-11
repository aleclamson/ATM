require_relative "user"
require_relative "interface"
require_relative "console"

class ATM

	def initialize
		
	end

end

display = ARGV
if display.eql?("console")
	@console
else
	@interface
end