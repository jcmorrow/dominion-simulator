require_relative 'victory'

class Estate < Victory

  def initialize
    super(name: 'Estate', points: 1, cost: 2)
  end

end
