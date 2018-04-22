class CreateTrials < ActiveRecord::Migration[5.1]
  def change
    create_table :trials do |t|
      t.integer :user_quiz_id
      t.integer :score
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
