class Victory < Card
  attr_reader :points

  def initialize(options = {})
    @points = options[:points]
    super
  end

  def victory?
    true
  end

end
