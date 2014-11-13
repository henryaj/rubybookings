class Theatre

  attr_reader :rows

  NUMBER_OF_ROWS = 1

  def initialize
    @rows = {}
    rownumber = 0
    NUMBER_OF_ROWS.times do
      @rows[rownumber] = Row.new
      rownumber += 1
    end
  end

end