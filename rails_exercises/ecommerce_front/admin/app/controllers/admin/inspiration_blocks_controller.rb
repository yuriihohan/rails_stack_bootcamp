require_dependency "admin/application_controller"

module Admin
  class InspirationBlocksController < ApplicationController
    before_filter :set_inspiration_block, only: [:edit, :update, :destroy]

    def index
      @inspiration_blocks = InspirationBlock.all
    end

    def new
      @inspiration_block = InspirationBlock.new
    end

    def create
      @inspiration_block = InspirationBlock.new(inspiration_block_params)

      if @inspiration_block.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def edit; end

    def update
      @inspiration_block.update_attributes(inspiration_block_params)

      if @inspiration_block.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

    def delete_confirmation
      @inspiration_block = InspirationBlock.find(params[:inspiration_block_id])
    end

    def destroy
      InspirationBlock.destroy(params[:id])

      redirect_to action: 'index'
    end

    private

    def set_inspiration_block
      @inspiration_block = InspirationBlock.find(params[:id])
    end

    def inspiration_block_params
      params[:inspiration_block]
    end
  end
end
