class RemoveStatusFromStaffs < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :status, :string
  end
end
