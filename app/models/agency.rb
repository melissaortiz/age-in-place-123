class Agency < ApplicationRecord
  has_many :ratings
end

def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end
  