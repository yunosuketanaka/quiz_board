class CreateTrialsQOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :trials_q_options do |t|
      t.integer :trial_id
      t.integer  :q_option_id

      t.timestamps
    end
  end
end
