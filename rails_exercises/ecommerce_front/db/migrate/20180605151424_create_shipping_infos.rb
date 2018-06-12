class CreateShippingInfos < ActiveRecord::Migration
  def change
    create_table :shipping_infos do |t|
      t.string :header, null: false, :limit => 50
      t.string :content, null: false
    end
  end
end
