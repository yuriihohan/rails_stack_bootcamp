class CreateSliderImages < ActiveRecord::Migration
  def change
    create_table :slider_images do |t|
      t.string :up_header, null: false, :limit => 25
      t.string :mid_header, null: false, :limit => 25
      t.string :button_text, null: false, :limit => 20

      t.attachment :slider_images, :image
    end
  end
end
