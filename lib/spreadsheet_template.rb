# encoding: utf-8
require 'action_view'
require 'iconv'
require 'spreadsheet_template/template_handler'
require 'spreadsheet_template/railtie'
# 
# 
# require 'spreadsheet_template/railtie.rb'
# 
# module SpreadsheetTemplate
# 
#   class Handler
#     # self.default_mime_type = 'application/vnd.ms-excel'
# 
#     def self.call(template)
#       %Q{controller.response.content_type ||= Mime::XLS
#          controller.headers["Content-Disposition"] = "attachment"
#          SpreadsheetTemplate::Base.new { |workbook| #{template.source} }.process}
#     end
#   end
# 
#   class Base
#     @@temp_file = nil
# 
#     def temp_file_path
#       unless @@temp_file
#         temp = Tempfile.new('spreadsheet-', File.join(Rails.root.to_s, 'tmp') )
#         @@temp_file = temp.path
#         temp.close
#       end
#       @@temp_file
#     end
# 
#     def initialize
#       yield workbook
#     end
# 
#     # 
#     def workbook
#       @workbook ||= Spreadsheet::Workbook.new
#     end
# 
#     # Do the final processing once the work inside the view file has finished
#     # We need to write the workbook to a temp dir because spreadsheet gem can't write to a string
#     def process
#       workbook.write(temp_file_path)
#       File.open(temp_file_path, 'rb') { |file| file.read }
#     end
#   end
# end