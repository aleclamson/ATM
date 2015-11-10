require 'gosu'

class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "ATM"
		@background = 0xf_ff00ff
	end

	def update
		
	end

	def draw
		@background
	end

	def button_down id
		close if id == Gosu::KbEscape
	end
end

window = GameWindow.new
window.show
