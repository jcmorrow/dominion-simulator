require 'spec_helper'
require_relative '../deck'

RSpec.describe Deck do

  let(:deck) { Deck.new }

  it 'exists' do
    expect { deck } .not_to raise_error
  end

  it "starts with a score of 3" do
    expect(deck.score).to eq(3)
  end


end
