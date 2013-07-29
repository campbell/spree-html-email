module Spree
  module HtmlEmailHelper

    def ups_tracking_link(tracking_number, text = nil)
      link_to(text || tracking_number, "http://wwwapps.ups.com/WebTracking/processInputRequest?sort_by=status&tracknums_displayed=1&TypeOfInquiryNumber=T&loc=en_us&InquiryNumber1=#{tracking_number}&track.x=0&track.y=0", class: 'track_shipment', target: '_blank') if tracking_number.present?
    end

  end
end
