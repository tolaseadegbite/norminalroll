class AddStaffStatusToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :staff_status, :string
  end
end
