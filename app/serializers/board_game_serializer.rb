class BoardGameSerializer
  include JSONAPI::Serializer

  set_id { nil }

  attributes :name, :description, :age_range, :duration, :image, :type
end
