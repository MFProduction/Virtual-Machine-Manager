# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
microUbuntuPreset = Preset.new(name:"Micro Ubuntu Server", image_id:"ami-5189a661", flavor_id:"t2.micro") 
microRHELPreset = Preset.new(name:"Micro RHEL Server", image_id:"ami-5189a661", flavor_id:"t2.micro") 