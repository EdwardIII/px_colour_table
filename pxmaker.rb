require 'rmagick'
include Magick

require 'pp'

image = ImageList.new("source.png")

def colors_to_rgb(magick_pixel)
  [ 
    magick_pixel.red,
    magick_pixel.green,
    magick_pixel.blue
  ]
end


#colors = image.color_histogram.keys.map { |magick_pixel| colors_to_rgb magick_pixel }

px_rows = 8
boom_map_array = (0..px_rows-1).map do |y|
  # y = ☝️ 
  x = 0
  cols = 8
  rows = 1
  image
    .get_pixels(x, y, cols, rows)
    .map do |magick_pixel| 
      [
        magick_pixel.red,
        magick_pixel.green,
        magick_pixel.blue
      ]
    end
end


boom_map_ruby = %Q(
class Map
  attr_accessor :grid

  def initialize
    @grid = #{boom_map_array.pretty_inspect}
  end
end
)

puts boom_map_ruby
