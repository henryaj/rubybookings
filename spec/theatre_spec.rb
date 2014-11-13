require 'spec_helper'

describe 'Theatre' do

  let(:theatre) { Theatre.new }

  it 'contains rows' do
    expect(theatre.rows).to be_an(Array)
    theatre.rows.each do |row|
      expect(row).to be_a(Row)
    end
  end

  it 'contains the correct number of rows' do
    expect(theatre.rows.count).to eq(Theatre::NUMBER_OF_ROWS)
  end




end