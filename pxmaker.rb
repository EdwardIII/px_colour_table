require 'rmagick'
include Magick


image = ImageList.new("source.png")

colours = []
image.each_pixel do |pixel, column, row|
  colours.push({pixel: pixel, column: column, row: row, color: pixel.to_color})
end

require 'pp'
pp  colours

# output sample:
#
# {:pixel=>#<Magick::Pixel:0x00007fba3ca1d288>,
#  :column=>398,
#  :row=>315,
#  :color=>"#101010102424"},
# {:pixel=>#<Magick::Pixel:0x00007fba3ca1d260>,
#  :column=>399,
#  :row=>315,
#  :color=>"#101010102424"},
# {:pixel=>#<Magick::Pixel:0x00007fba3ca1d238>,
#  :column=>400,
#  :row=>315,
#  :color=>"#101010102424"},
