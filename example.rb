# It looks like DragonRuby automatically imports all classe it can find.
# So you shouldn't need this include, Map should already be available
require_relative 'map'

p Map.new.grid


