class AddColumnToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :password_confirmation, :string
  end
end
