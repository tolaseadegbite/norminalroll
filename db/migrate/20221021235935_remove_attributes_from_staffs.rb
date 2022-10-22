class RemoveAttributesFromStaffs < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :dob, :datetime
    remove_column :staffs, :dofa, :datetime
    remove_column :staffs, :dopa, :datetime
  end
end
