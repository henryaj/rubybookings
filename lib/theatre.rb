class Theatre

  attr_reader :rows

  NUMBER_OF_ROWS = 100

  def initialize
    @rows = []
    rownumber = 0
    NUMBER_OF_ROWS.times do
      row = Row.new
      row.id = rownumber
      @rows << row
      rownumber += 1
    end
  end

end