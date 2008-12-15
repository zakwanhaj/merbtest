module Merb
  module SmsHelper
    def active_sidebar_link(value,action)
    %Q{
        <div class="ClearDiv RightMenuBox #{params[:action]==action ? "GrayBGLink" : "WBGLink"}">
        <div class="FR space2"></div>
        <div class="FR SMSSend"></div>
        <div class="FR MenuItemPadding GreenM">#{params[:action]==action ? _(value,:language => 'ar', :country => 'JO') : "<a href='/sms/#{action}' class='GreenMenu'>#{_(value,:language => 'ar', :country => 'JO')}</a>"}</div>
      </div>
      }
    end
  end
end # Merb