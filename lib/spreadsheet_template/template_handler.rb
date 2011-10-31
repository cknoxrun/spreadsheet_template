# encoding: utf-8

module SpreadsheetTemplate # :nodoc:
  # Template handler for Excel templates
  #
  # Add rows to your Excel file in the template by manipulating the 'book' variable using the Spreadsheet gem methods
  #
  # sheet = book.create_worksheet
  # sheet.name = "Phenol-Explorer Polyphenol Classes"
  # 
  # # Set style for header
  # sheet.row(0).concat headers
  # format = Spreadsheet::Format.new :color => :blue, :weight => :bold, :size => 10
  # sheet.row(0).default_format = format
  # row = sheet.row(1)
  # row.push ('one', 'two', 'three')
  # 
  #
  # You can set the default filename for that a browser will use for 'save as' by
  # setting <tt>@filename</tt> instance variable in your controller's action method
  # e.g.
  #
  #   @filename = 'report.csv'
  class TemplateHandler
    def self.call(template)
      <<-EOV
      begin
        if controller.request.env['HTTP_USER_AGENT'] =~ /msie/i
          controller.response.headers['Pragma'] = 'public'
          controller.response.headers['Cache-Control'] = 'no-cache, must-revalidate, post-check=0, pre-check=0'
          controller.response.headers['Content-Disposition'] = "attachment; filename=\#{@filename}"
          controller.response.headers['Expires'] = "0"
        else
          controller.response.headers["Content-Disposition"] = "attachment; filename=\#{@filename}"
          controller.response.headers["Content-Transfer-Encoding"] = "binary"
        end
        controller.response.content_type ||= Mime::XLS

        book = Spreadsheet::Workbook.new
        #{template.source}
        blob = StringIO.new("")
        book.write blob
        blob.string
      rescue Exception => e
        Rails.logger.warn("Exception \#{e} \#{e.message} with class \#{e.class.name} thrown when rendering XLS")
        raise e
      end
      EOV
    end

    def compile(template)
      self.class.call(template)
    end
  end
end
