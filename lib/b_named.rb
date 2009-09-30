$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'

gem 'httparty', '0.4.3'
require 'httparty'

gem 'mash', '0.0.3'
require 'mash'

require 'b_named/availability'
require 'b_named/version'