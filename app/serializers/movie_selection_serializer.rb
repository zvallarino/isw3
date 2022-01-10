class MovieSelectionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :profile
  has_one :movie
end
