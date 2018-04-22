class CreateQOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :q_options do |t|
      t.integer :question_id
      t.text :body
      t.boolean :is_correct

      t.timestamps
    end
  end
end
