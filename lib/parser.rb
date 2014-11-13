class Parser

  attr_accessor :contents, :bookings

  def read(file)
    @contents = File.open(file, 'r') { |f| f.read }
    raise unless formatting_valid?(contents)
  end

  def formatting_valid?(file)
    # returns false if file contains any letters
    file.match(/[a-zA-Z]/) ? false : true
  end

  def parse
    raise if @contents == nil
    @bookings = []
    @contents.each_line do |line|
      # strip leading '(' and trailing '),'
      line[-1,1] == ',' ? line = line[1..-3] : line = line[1..-2]
      id = line.match(/\d+/).to_s
      puts "And the id is"
      puts id
      # get start row and seat number
      start_row = line[]
      # get end row and seat number
      # append to array
      # @bookings << [id, start_row, start_seat, end_row, end_seat]
    end
  end

end