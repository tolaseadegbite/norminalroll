class StaffResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :title
  attribute :surname
  attribute :other_names
  attribute :sex
  attribute :state
  attribute :lga
  attribute :designation
  attribute :qwd
  attribute :prof_qualifications
  attribute :conpcass
  attribute :dob
  attribute :dofa
  attribute :dopa
  attribute :status_of_app
  attribute :file_no
  attribute :remarks
  attribute :created_at, form: false
  attribute :updated_at, form: false

  # Associations
  attribute :user
  attribute :qualificationables
  attribute :qualifications

  # Uncomment this to customize the display name of records in the admin area.
  # def self.display_name(record)
  #   record.name
  # end

  # Uncomment this to customize the default sort column and direction.
  # def self.default_sort_column
  #   "created_at"
  # end
  #
  # def self.default_sort_direction
  #   "desc"
  # end
end
