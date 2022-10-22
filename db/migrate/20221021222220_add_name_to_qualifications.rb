class AddNameToQualifications < ActiveRecord::Migration[7.0]
  def change
    add_column :qualifications, :name, :string
  end
end
