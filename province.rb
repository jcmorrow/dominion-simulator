require_relative 'victory'

class Province < Victory

  def initialize
    super(name: 'Province', points: 6, cost: 8)
  end

end