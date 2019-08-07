class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :content
      t.string :field
      t.string :area
      t.integer :salary
      t.datetime :registration_deadline
      t.datetime :task_deadline
      t.string :time_to_do
      t.boolean :veteran
      t.string :descript_url
      t.string :money_unit

      t.timestamps
    end
  end
end
