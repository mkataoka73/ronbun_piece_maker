class Element < ApplicationRecord
  validates_presence_of :title, :citation, :source,
                        :on => :create
end
