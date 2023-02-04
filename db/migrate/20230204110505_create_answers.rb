class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :questions, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
