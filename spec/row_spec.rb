require 'spec_helper'

describe 'Row' do

  let(:row) { Row.new }

  it 'contains seats' do
    expect(row.seats).to be_an(Array)
  end

  it 'contains the correct number of seats' do
    expect(row.seats.count).to eq(Row::NUMBER_SEATS_PER_ROW)
  end

  xit 'knows when it is full'

  xit 'knows when it only has single seats remaining'

end