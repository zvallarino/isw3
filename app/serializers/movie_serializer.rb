class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :thumbnail, :backdrop, :rating, :runtime, :release_date, :movie_link
end
