require 'spec_helper'

describe 'Parser' do
  
  let(:parser) { Parser.new }

  expected_bookings_array = [
    {:id=>"0", :start_row=>"89", :start_seat=>"13", :end_row=>"89", :end_seat=>"13"},
    {:id=>"1", :start_row=>"67", :start_seat=>"44", :end_row=>"67", :end_seat=>"47"},
    {:id=>"2", :start_row=>"33", :start_seat=>"46", :end_row=>"33", :end_seat=>"47"}
  ]

  context 'reading text files' do
    it 'can open a text file' do
      expect{ parser.read('./spec/sample_booking_requests.txt') }.not_to raise_error
    end

    it 'raises an error if the file contains any text' do
      expect{ parser.read('./spec/malformed_booking_requests.txt') }.to raise_error
    end
  end

  context 'parsing files' do
    it 'raises an error if you try to parse before a valid file has been read' do
      expect{ parser.parse }.to raise_error
    end

    it 'gets the id from each row of the booking' do
      parser = Parser.new

      parser.read('./spec/sample_booking_requests.txt')
      parser.parse
      expect(parser.bookings).to be_kind_of(Array)
      expect(parser.bookings).to match_array(expected_bookings_array)
    end
  end

end