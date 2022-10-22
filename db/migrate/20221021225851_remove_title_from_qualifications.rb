class RemoveTitleFromQualifications < ActiveRecord::Migration[7.0]
  def change
    remove_column :qualifications, :title, :string
  end
end
