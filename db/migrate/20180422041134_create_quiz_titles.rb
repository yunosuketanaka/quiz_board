class CreateQuizTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_titles do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
