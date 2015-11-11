require "gosu"

class Cursor

	def initialize window
		@window = window
		@image = Gosu::Image.new("media/cursor.bmp")
	end

	def draw
		@image.draw(@window.mouse_x, @window.mouse_y, 9, 0.05, 0.05)
	end
end