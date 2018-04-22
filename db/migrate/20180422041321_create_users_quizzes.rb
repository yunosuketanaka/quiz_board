class CreateUsersQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :users_quizzes do |t|
      t.integer :user_id
      t.integer :quiz_id

      t.timestamps
    end
  end
end
