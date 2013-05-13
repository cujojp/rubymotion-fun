# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

require 'rubygems' # add
require 'bundler'
require 'bubble-wrap'

Bundler.require
Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.files = Dir.glob(File.join(app.project_dir, 'app/contollers/*.rb')) |
              Dir.glob(File.join(app.project_dir, 'app/**/*.rb')) 
  app.name = 'Hello'
end
