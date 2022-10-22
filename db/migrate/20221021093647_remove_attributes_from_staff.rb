class RemoveAttributesFromStaff < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :title, :string
    remove_column :staffs, :staff_status, :string
    remove_column :staffs, :status_of_app, :string
    remove_column :staffs, :sex, :string
  end
end
