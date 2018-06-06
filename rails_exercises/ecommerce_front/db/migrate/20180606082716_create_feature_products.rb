class CreateFeatureProducts < ActiveRecord::Migration
  def change
    create_table :feature_products do |t|
      t.string :header, null: false,  :limit => 50
      t.decimal :price, :precision => 8, :scale => 2
    end
  end
end
