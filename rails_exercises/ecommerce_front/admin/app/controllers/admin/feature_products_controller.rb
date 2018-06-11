require_dependency "admin/application_controller"

module Admin
  class FeatureProductsController < ApplicationController
    before_filter :set_feature_product, only: [:edit, :update, :destroy]

    def index
      @feature_products = FeatureProduct.all
    end

    def new
      @feature_product = FeatureProduct.new
    end

    def create
      @feature_product = FeatureProduct.new(feature_product_params)

      if @feature_product.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def edit; end

    def update
      if @feature_product.update_attributes(feature_product_params)
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def delete_confirmation
      @feature_product = FeatureProduct.find(params[:feature_product_id])
    end

    def destroy
      FeatureProduct.destroy(params[:id])

      redirect_to action: 'index'
    end

    private

    def set_feature_product
      @feature_product = FeatureProduct.find(params[:id])
    end

    def feature_product_params
      params[:feature_product]
    end
  end
end
