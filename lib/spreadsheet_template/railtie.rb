class SpreadsheetTemplate::Railtie < Rails::Railtie
  initializer "spreadsheet_template.register_template_handler.action_view" do
    ActionView::Template.register_template_handler 'xlsbuilder', SpreadsheetTemplate::TemplateHandler
  end
end
