# == Schema Information
#
# Table name: elements
#
#  id         :integer          not null, primary key
#  title      :string
#  citation   :text
#  source     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Element < ApplicationRecord
  validates_presence_of :title, :citation, :source
end
