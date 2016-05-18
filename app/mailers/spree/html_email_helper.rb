module Spree
  module HtmlEmailHelper

    def ups_tracking_link(tracking_number, text = nil)
      link_to(text || tracking_number, "http://wwwapps.ups.com/WebTracking/processInputRequest?sort_by=status&tracknums_displayed=1&TypeOfInquiryNumber=T&loc=en_us&InquiryNumber1=#{tracking_number}&track.x=0&track.y=0", class: 'track_shipment', target: '_blank') if tracking_number.present?
    end

    def tracking_link(tracking_number, text = nil)
      link_url = if tracking_number =~ /1z/i
        "http://wwwapps.ups.com/WebTracking/processInputRequest?sort_by=status&tracknums_displayed=1&TypeOfInquiryNumber=T&loc=en_us&InquiryNumber1=#{tracking_number}&track.x=0&track.y=0"
      else
        "https://tools.usps.com/go/TrackConfirmAction.action?tLc=1&tLabels=#{tracking_number}"
      end
  
      link_to(text || tracking_number, link_url, class: 'track_shipment', target: '_blank') if tracking_number.present?
    end

  end
end
