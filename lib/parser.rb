class Parser

  def read(file)
    contents = File.open(file, 'r') { |f| f.read }
    raise unless formatting_valid?(contents)
  end

  def formatting_valid?(file)
    # returns false if file contains any letters
    file.match(/[a-zA-Z]/) ? false : true
  end

end