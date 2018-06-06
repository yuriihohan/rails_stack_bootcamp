class FrontpageController < ApplicationController
  def index
    @shipping_info_blocks = ShippingInfo.all
    @inspiration_blocks = InspirationBlock.all
  end
end
