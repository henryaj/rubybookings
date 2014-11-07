class Parser

  def read(file)
    contents = File.open(file, 'r') { |f| f.read }
    raise unless formatting_valid?(contents)
  end

  def formatting_valid?(file)
    if file.match(/[a-zA-Z]/)
      false
    else
      true
    end
  end

end