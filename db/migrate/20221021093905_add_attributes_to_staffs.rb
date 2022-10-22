class AddAttributesToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :title, :string
    add_column :staffs, :status_of_app, :string
    add_column :staffs, :status, :string
    add_column :staffs, :sex, :string
  end
end
