class BoardGameSerializer
  include JSONAPI::Serializer

  attributes :name, :description, :age_range, :duration, :image, :type
end
