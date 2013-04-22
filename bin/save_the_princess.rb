# bin/save_the_princess.rb
libs = [
	File.expand_path('../../lib', __FILE__),
	File.expand_path('../../app', __FILE__)
]
$LOAD_PATH.unshift *Dir.glob(libs)

require "save_the_princess"

@characters = [
	Character.new(name: "Prometheus", strength:3, armor:2, resistance:4),
	Character.new(name: "Dumbledore", strength:1, armor:1, resistance:5)
]

@ranger = [Ranger.new(name: "hawk archer", strength:1, armor:2, resistance:4)]
