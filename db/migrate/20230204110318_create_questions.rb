class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :users, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
