class MovieSelection < ApplicationRecord
  belongs_to :profile
  belongs_to :movie
end
