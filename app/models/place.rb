class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: {minimum: 3, too_short: "Must be at least %{count} characters" }
  validates :address, presence: true
  validates :description, presence: true

  def self.search(page)
    paginate(page: page, per_page: 5).order('id ASC')

  end
end