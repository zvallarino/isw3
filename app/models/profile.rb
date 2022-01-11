class Profile < ApplicationRecord
  has_many :movie_selections
  has_many :movies, through: :movie_selections
end
