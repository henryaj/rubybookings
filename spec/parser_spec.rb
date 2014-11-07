require 'spec_helper'

describe 'Parser' do
  
  it 'can read a text file' do
    parser = Parser.new
    expect{ parser.read('./sample_booking_requests.txt') }.not_to raise_error
  end

end