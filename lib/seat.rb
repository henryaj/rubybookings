class Seat

  attr_accessor :id

  def initialize
    @id = nil
    @booked = false
  end

  def booked?
    @booked
  end

  def book!
    @booked = true
  end

  def unbook!
    @booked = false
  end

end