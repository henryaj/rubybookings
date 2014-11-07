class Parser

  def read(file)
    contents = File.open(file, 'r') { |f| f.read }
  end

end