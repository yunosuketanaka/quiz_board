class RemovePasswordConfirmationFromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :password_confirmation, :string
  end
end
