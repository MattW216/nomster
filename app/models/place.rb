class Place < ApplicationRecord

  def self.search(page)
    paginate(page: page, per_page: 5).order('id ASC')
  end
end