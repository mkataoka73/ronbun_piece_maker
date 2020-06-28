# == Schema Information
#
# Table name: elements
#
#  id         :integer          not null, primary key
#  title      :string
#  citation   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  source     :string
#
require 'test_helper'

class ElementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
