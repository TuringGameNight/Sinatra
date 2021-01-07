class BoardGame
  attr_reader :name, :description, :duration, :image, :type

  def initialize(data)
    @name = data[:name]
    @description = data[:description]
    @min_age = data[:min_age]
    @duration = data[:max_playtime]
    @image = data[:image_url]
    @type = nil
  end

  def age_range
    return nil if @min_age.nil?
    "#{@min_age}+"
  end
end
