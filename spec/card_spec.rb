require 'spec_helper'
require_relative '../card'

RSpec.describe Card do

  let(:card) { Card.new }

  it 'has a type' do
    expect(card).to respond_to(:type)
  end

  it 'has a name' do
    expect(card).to respond_to(:name)
  end

  it 'has a cost' do
    expect(card).to respond_to(:cost)
  end

end