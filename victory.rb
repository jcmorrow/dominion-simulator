class Victory < Card

  def initialize(options = {})
    @points = options[:points]
    super
  end

end