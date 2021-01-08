# frozen_string_literal: true

class BoardGameSerializer
  include JSONAPI::Serializer

  set_id { nil }

  attributes :name, :description, :age_range, :duration, :image, :game_type
end
