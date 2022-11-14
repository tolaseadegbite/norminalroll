class AddUniqueIndexOnEmail < ActiveRecord::Migration[7.0]
  def change
    add_index :staffs, :email, unique: true
  end
end
