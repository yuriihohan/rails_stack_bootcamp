class FrontpageController < ApplicationController
  def index
    @shipping_info_blocks = ShippingInfo.all
    @inspiration_blocks = InspirationBlock.all
    @feature_products = FeatureProduct.all
    @slider_images = SliderImage.all
  end
end
