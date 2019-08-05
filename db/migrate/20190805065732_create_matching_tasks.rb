class CreateMatchingTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :matching_tasks do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
