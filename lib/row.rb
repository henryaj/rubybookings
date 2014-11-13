class Row

  attr_accessor :id
  attr_reader :seats

  NUMBER_SEATS_PER_ROW = 50

  def initialize
    @id = nil
    @seats = []
    seatnumber = 0
    NUMBER_SEATS_PER_ROW.times do
      seat = Seat.new
      seat.id = seatnumber
      @seats << seat
      seatnumber += 1
    end
  end
  
end