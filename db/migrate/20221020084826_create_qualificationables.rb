class CreateQualificationables < ActiveRecord::Migration[7.0]
  def change
    create_table :qualificationables do |t|
      t.references :staff, null: false, foreign_key: true
      t.references :qualification, null: false, foreign_key: true

      t.timestamps
    end
  end
end
