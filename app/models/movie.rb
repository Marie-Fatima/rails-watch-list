class Movie < ApplicationRecord
  validates  :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :poster_url, presence: true, allow_blank: false
  has_many :bookmarks, dependent: :restrict_with_error

end
