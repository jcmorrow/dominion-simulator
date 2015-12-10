class Card
  attr_reader :type

  def initialize(options = {})
    @type = options[:type]
  end

  

end