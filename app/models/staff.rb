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
  belongs_to :user

  enum sex: { Female: 0, Male: 1 }
  enum status_of_app: { Pending: 0, Active: 1, Retired: 2 }
end
