class AddAttributesToStaff < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :permanent_address, :string
    add_column :staffs, :department, :string
    add_column :staffs, :phone_number, :integer
    add_column :staffs, :email, :string
    add_column :staffs, :date_of_confirmation, :date
  end
end
