require 'rake/rdoctask'

desc 'Generate documentation for the spreadsheet_template plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Spreadsheet Template'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('CHANGELOG.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
