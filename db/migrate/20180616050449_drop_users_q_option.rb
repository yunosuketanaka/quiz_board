class DropUsersQOption < ActiveRecord::Migration[5.1]
  def change
    drop_table :users_q_options

  end
end
