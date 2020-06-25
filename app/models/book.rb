class Book < ApplicationRecord
  has_many :authors
  validates_presence_of :title, :author, :publisher, :published_year
  validates :isbn, presence: true

  def get_image_url
    if isbn
      client = OpenBD::Client.new
      client.search(isbns: isbn).resources.first.cover_image
    end
  end
end
