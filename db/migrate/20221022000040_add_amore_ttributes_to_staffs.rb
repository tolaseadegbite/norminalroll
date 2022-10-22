class AddAmoreTtributesToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :dob, :date
    add_column :staffs, :dofa, :date
    add_column :staffs, :dopa, :date
  end
end
