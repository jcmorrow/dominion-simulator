require 'spec_helper'
require_relative '../treasure.rb'

RSpec.describe Treasure do

  let(:treasure) { Treasure.new }

  it 'has a value' do
    expect(treasure).to respond_to(:value)
  end

  it 'still gets a name and a value and a cost' do
    treasure = Treasure.new(cost: 0, value: 1, name: 'Copper')

    expect(treasure.cost).to eq(0)
    expect(treasure.value).to eq(1)
    expect(treasure.name).to eq('Copper')
  end

end