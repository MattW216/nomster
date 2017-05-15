class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  def self.search(page)
    paginate(page: page, per_page: 5).order('id ASC')

  end
end