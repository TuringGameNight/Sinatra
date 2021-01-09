# frozen_string_literal: true

class BoardGameSerializer
  include JSONAPI::Serializer

  set_id { nil }

  attributes :name, :description, :age_range, :duration, :image, :num_players, :game_type
end
