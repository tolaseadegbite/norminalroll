# == Schema Information
#
# Table name: staffs
#
#  id                  :bigint           not null, primary key
#  title               :string
#  surname             :string
#  other_names         :string
#  sex                 :integer          default(0)
#  state               :string
#  lga                 :string
#  designation         :string
#  qwd                 :text
#  prof_qualifications :text
#  conpcass            :integer
#  dob                 :datetime
#  dofa                :datetime
#  dopa                :datetime
#  status_of_app       :integer          default(0)
#  file_no             :string
#  remarks             :text
#  user_id             :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Staff < ApplicationRecord
  validates :title, :surname, :other_names, :sex, :state, :lga, :designation, :prof_qualifications, :conpcass, :staff_status, :dob, :dofa, :dopa, :status_of_app, :file_no, :remarks, :permanent_address, :department, :phone_number, :email, :date_of_confirmation, presence: true

  validates_uniqueness_of :phone_number
  validates_uniqueness_of :email

  belongs_to :user
  has_many :qualificationables, dependent: :destroy
  has_many :qualifications, through: :qualificationables


  enum title: { doctor: "Doctor", mr: "Mr", mrs: "Mrs" }

  enum staff_status: { "Chief lecturer with PhD": "Chief lecturer with PhD", "Chief lecturer with MSc": "Chief lecturer with MSc", "Senior lecturer with PhD": "Senior lecturer with PhD", "Senior lecturer with MSc": "Senior lecturer with MSc" }

  enum status_of_app: { pending: "Pending", active: "Active", retired: "Retired" }

  enum sex: { male: "Male", female: "Female" }
end
