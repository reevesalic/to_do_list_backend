class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :phone_number
      t.integer :category_id

      t.timestamps
    end
  end
end
