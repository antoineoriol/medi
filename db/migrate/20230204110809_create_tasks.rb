class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :answer, null: false, foreign_key: true
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
