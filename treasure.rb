class Treasure < Card
  attr_reader :value

  def initialize(options = {})
    @value = options[:value]
    super(options)
  end

end