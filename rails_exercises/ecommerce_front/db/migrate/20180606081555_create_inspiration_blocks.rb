class CreateInspirationBlocks < ActiveRecord::Migration
  def change
    create_table :inspiration_blocks do |t|
      t.string :header, null: false, :limit => 50
      t.string :text, null: false

      t.attachment :image
    end
  end
end
