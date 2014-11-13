class Theatre

  attr_reader :rows

  NUMBER_OF_ROWS = 100

  def initialize
    @rows = []
    NUMBER_OF_ROWS.times { @rows << Row.new }
  end

end