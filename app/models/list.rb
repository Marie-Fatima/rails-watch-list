class List < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :restrict_with_error

end
