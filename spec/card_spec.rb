require 'spec_helper'
require_relative '../card'

RSpec.describe Card do

  let(:card) { Card.new }

  it 'has a type' do
    expect(card).to respond_to(:type)
  end

end