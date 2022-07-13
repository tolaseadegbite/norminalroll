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
require "test_helper"

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
