require_dependency "admin/application_controller"

module Admin
  class SliderImagesController < ApplicationController
    before_filter :set_slider_image, only: [:edit, :update, :destroy]

    def index
      @slider_images = SliderImage.all
    end

    def new
      @slider_image = SliderImage.new
    end

    def create
      @slider_image = SliderImage.new(slider_image_params)

      if @slider_image.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def edit; end

    def update
      if @slider_image.update_attributes(slider_image_params)
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def delete_confirmation
      @slider_image = SliderImage.find(params[:slider_image_id])
    end

    def destroy
      SliderImage.destroy(params[:id])

      redirect_to action: 'index'
    end

    private

    def set_slider_image
      @slider_image = SliderImage.find(params[:id])
    end

    def slider_image_params
      params[:slider_image].slice(:button_text, :mid_header, :up_header, :image, :filename, :original_filename, :content_type)
    end
  end
end
