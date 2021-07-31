%w[homo_sapiens people hominids primates mammals chordates animals].each do |f|
require_relative "lib/#{f}"
end

puts infusoria_slipper   = Animals.new
puts strix   = Chordates.new
puts whale    = Mammals.new
puts tamarin    = Primates.new
puts bonobos    = Hominids.new
puts yeti    = People.new
puts vera_zbitneva   = HomoSapiens.new

