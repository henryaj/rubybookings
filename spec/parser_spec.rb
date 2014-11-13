require 'spec_helper'

describe 'Parser' do
  
  let(:parser) { Parser.new }

  expected_bookings_array = [["0", "89", "13", "89", "13"], ["1", "67", "44", "67", "47"], ["2", "33", "46", "33", "47"]]

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