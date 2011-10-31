# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'spreadsheet_template/version'
 
Gem::Specification.new do |s|
  s.name        = "spreadsheet_template"
  s.version     = SpreadsheetTemplate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig Knox", "Koen Van der Auwera", "Gabe da Silveira"]
  s.email       = ["cknox@insiliflo.com"]
  s.homepage    = "http://github.com/cknoxrun/spreadsheet_template"
  s.summary     = "Excel Spreadsheet template handler for Rails"
  s.description = "Excel Spreadsheet template handler for Rails. Enables :format => 'xls' in controllers, with templates of the form report.xls.xlsbuilder."
  s.licenses = ["MIT"]
  s.required_rubygems_version = ">= 1.3.6"
 
  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE)
  s.require_path = 'lib'  
  s.add_dependency 'spreadsheet', '>=0.6.5.9'
end
