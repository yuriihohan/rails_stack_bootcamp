class FrontpageController < ApplicationController
  def index
    @shipping_info_blocks = ShippingInfo.all
  end
end
