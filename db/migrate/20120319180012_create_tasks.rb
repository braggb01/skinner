class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :section_id
      t.date :due_date

      t.timestamps
    end
  end
end
