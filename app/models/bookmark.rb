class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }

  belongs_to :movie
  belongs_to :list


end
