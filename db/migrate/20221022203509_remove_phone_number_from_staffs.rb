class RemovePhoneNumberFromStaffs < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :phone_number, :string
  end
end
