class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent :destroy
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: {minimum: 3, too_short: "Must be at least %{count} characters" }
  validates :address, presence: true
  validates :description, presence: true

  def self.search(page)
    paginate(page: page, per_page: 5).order('id ASC')

  end
end