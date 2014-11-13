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
      # convert line to an array
      line = line.scan(/\d+/)

      id          = line[0]
      start_row   = line[1]
      start_seat  = line[2]
      end_row     = line[3]
      end_seat    = line[4]

      # append to array
      @bookings << {id: id, start_row: start_row, start_seat: start_seat, end_row: end_row, end_seat: end_seat}
    end
  end

end