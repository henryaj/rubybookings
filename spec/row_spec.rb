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

  it 'knows when it is full' do
    row.seats.each { |seat| seat.book! }
    expect(row.booked?).to be true
  end

  it 'by default does not have only single seats remaining' do
    expect(row.only_single_seats?).to be false
  end

  it 'knows when it only has single seats remaining' do
    # book all seats in a row
    row.seats.each { |seat| seat.book! }
    # unbook a few individual seats
    row.seats.each do |seat|
      seat.unbook! if seat.id == 35
      seat.unbook! if seat.id == 5
      seat.unbook! if seat.id == 0
    end
    expect(row.only_single_seats?).to be true
  end

  xit 'knows when it has more than single seats remaining' do
    # book all seats in a row
    row.seats.each { |seat| seat.book! }
    # unbook a few individual seats
    row.seats.each do |seat|
      seat.unbook! if seat.id == 1
      seat.unbook! if seat.id == 0
    end
    expect(row.only_single_seats?).to be false
  end

end