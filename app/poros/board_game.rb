class BoardGame
  attr_reader :name, :description, :age_range, :duration, :image, :type

  def initialize(data)
    @name = data[:name]
    @description = data[:description]
    @age_range = "#{data[:min_age]}+"
    @duration = data[:max_playtime] - data[:min_playtime]
    @image = data[:image_url]
    @type = nil
  end
end
