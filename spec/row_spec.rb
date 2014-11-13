require 'spec_helper'

describe 'Row' do

  let(:row) { Row.new }

  it 'contains seats' do
    expect(row.seats).to be_an(Array)
    row.seats.each do |seat|
      expect(seat).to be_a(Seat)
    end
  end
 
  it 'each seat has its own id' do
    row.seats.each do |seat|
      expect(seat.id).to be_a(Fixnum)
    end
  end
 
  it 'contains the correct number of seats' do
    expect(row.seats.count).to eq(Row::NUMBER_SEATS_PER_ROW)
  end

  xit 'knows when it is full' do
    row.seats.each { |seat| seat.book! }
    expect(row.booked?).to be true
  end

  xit 'knows when it only has single seats remaining'

end