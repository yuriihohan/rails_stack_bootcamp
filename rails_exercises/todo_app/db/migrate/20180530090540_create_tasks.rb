class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :note
      t.date :dueDate, null: false
      t.date :completionDate
    end
  end
end
