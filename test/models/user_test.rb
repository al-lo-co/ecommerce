# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  age                    :integer
#  state                  :string
#  city                   :string
#  street                 :string
#  uid                    :string
#  provider               :string
#  permission_level       :integer
#  img_file_name          :string
#  img_content_type       :string
#  img_file_size          :bigint
#  img_updated_at         :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
