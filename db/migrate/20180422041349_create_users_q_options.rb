class CreateUsersQOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :users_q_options do |t|
      t.integer :user_id
      t.integer :q-option_id

      t.timestamps
    end
  end
end
