require_relative 'treasure'

class Gold < Treasure

  def initialize
    super(name: 'Gold', value: 3, cost: 6)
  end

end