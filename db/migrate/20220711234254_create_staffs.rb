class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :title
      t.string :surname
      t.string :other_names
      t.integer :sex, default: 0
      t.string :state
      t.string :lga
      t.string :designation
      t.text :qwd
      t.text :prof_qualifications
      t.integer :conpcass
      t.datetime :dob
      t.datetime :dofa
      t.datetime :dopa
      t.integer :status_of_app, default: 0
      t.string :file_no
      t.text :remarks
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
