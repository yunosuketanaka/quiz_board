class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :title
      t.text :body
      t.text :explanation

      t.timestamps
    end
  end
end
