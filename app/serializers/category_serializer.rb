# frozen_string_literal: true

class CategorySerializer
  include JSONAPI::Serializer

  set_id { nil }

  attributes :id, :name, :url
end
