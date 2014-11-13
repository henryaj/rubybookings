require 'spec_helper'

describe 'Seat' do

  let(:seat) { Seat.new }

  it 'is unbooked by default' do
    expect(seat.booked?).to be false
  end

  it 'once booked, knows it is booked' do
    seat.book!
    expect(seat.booked?).to be true
  end

end