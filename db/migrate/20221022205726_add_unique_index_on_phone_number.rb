class AddUniqueIndexOnPhoneNumber < ActiveRecord::Migration[7.0]
  def change
    add_index :staffs, :phone_number, unique: true
  end
end
