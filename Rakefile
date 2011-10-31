require 'rdoc/task'
require 'jeweler'

desc 'Generate documentation for the spreadsheet_template plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Spreadsheet Template'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('CHANGELOG.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Jeweler::Tasks.new do |gem|
  gem.name = "spreadsheet_template"
  gem.homepage = "http://github.com/cknoxrun/spreadsheet_template"
  gem.license = "MIT"
  gem.summary = %Q{Excel Spreadsheet template handler for Rails}
  gem.description = %Q{Excel Spreadsheet template handler for Rails. Enables :format => 'xls' in controllers, with templates of the form report.xls.xlsbuilder.}
  gem.email = "cknox@insiliflo.com"
  gem.authors = ['Craig Knox', 'Koen Van der Auwera', 'Gabe da Silveira']

  gem.add_dependency 'actionpack', '>=3.0.0'
  gem.add_dependency 'spreadsheet', '>=0.6.5.9'

  gem.add_development_dependency 'jeweler'
end
Jeweler::RubygemsDotOrgTasks.new
