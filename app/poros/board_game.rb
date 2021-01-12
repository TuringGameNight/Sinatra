# frozen_string_literal: true

class BoardGame
  attr_reader :name, :description, :duration, :image, :game_type

  def initialize(data)
    @name = data[:name]
    @description = data[:description]
    @min_age = data[:min_age]
    @duration = data[:max_playtime]
    @image = data[:image_url]
    @min_players = data[:min_players]
    @max_players = data[:max_players]
    @game_type = data[:categories]
  end

  def age_range
    return nil if @min_age.nil?

    "#{@min_age}+"
  end

  def num_players
    if @min_players.nil? || @max_players.nil?
      nil
    elsif @min_players == @max_players
      "#{@min_players}"
    else
      "#{@min_players}-#{@max_players}"
    end
  end
end
