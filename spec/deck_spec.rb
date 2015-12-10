require 'spec_helper'
require_relative '../deck'

RSpec.describe Deck do

  let(:deck) { Deck.new }

  it 'exists' do
    expect { deck } .not_to raise_error
  end


end