Spree::ShipmentMailer.class_eval do
  add_template_helper Spree::BaseHelper
  add_template_helper Spree::HtmlEmailHelper
  
  layout 'spree/layouts/email'
end
