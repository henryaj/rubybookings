class Row

  attr_reader :seats

  NUMBER_SEATS_PER_ROW = 50

  def initialize
    @seats = []
    NUMBER_SEATS_PER_ROW.times { @seats << Seat.new }
  end

end