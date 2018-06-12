require_dependency 'admin/application_controller'

module Admin
  class ShippingInfoController < ApplicationController
    def index
      @shipping_info_blocks = ShippingInfo.all
    end

    def edit
      @shipping_info = ShippingInfo.find(params[:format])
    end

    def update
      @shipping_info = ShippingInfo.find(params[:shipping_info][:id])

      if @shipping_info.update_attributes(params[:shipping_info])
        redirect_to action: 'index'
      else
        render :edit
      end
    end
  end
end
