require 'spec_helper'

describe 'Parser' do
  
  let(:parser) { Parser.new }

  context 'reading text files' do

    it 'can read a text file' do
      expect{ parser.read('./spec/sample_booking_requests.txt') }.not_to raise_error
    end

    it 'raises an error if the file contains any text' do
      expect{ parser.read('./spec/malformed_booking_requests.txt') }.to raise_error
    end

  end

end