#
#

require 'yaml'
require 'ImageResize'

folder = "./src/img"
dataFile = "./src/_data/artwork.yaml"
exclude = ['.','..','thumb']

pics = Dir.entries(folder).reject{|f| exclude.include? f }

# input_image_filename, output_image_filename, max_width, max_height
pics.map{ |x|
	Image.resize("./src/img/"+x, './src/img/thumb/'+x, 400, 400)
}

File.open(dataFile, 'w') { |f| f.write(pics.to_yaml) }