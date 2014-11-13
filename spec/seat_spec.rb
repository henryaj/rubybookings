require 'spec_helper'

describe 'Seat' do

  let(:seat) { Seat.new }

  it 'is unbooked by default' do
    expect(seat.booked?).to be false
  end

  it 'can be booked' do
    expect{ seat.book! }.not_to raise_error
  end

  it 'can be unbooked' do
    expect{ seat.unbook! }.not_to raise_error
  end

  it 'once booked, knows it is booked' do
    seat.book!
    expect(seat.booked?).to be true
  end

end