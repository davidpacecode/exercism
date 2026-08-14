class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.slice(@line.index(':') + 1, @line.length).strip
  end

  def log_level
    @line.slice(@line.index('[') + 1, @line.index(']') - 1).strip
  end

  def reformat
    "#{message} (#{log_level.downcase})"
  end
end

puts LogLineParser.new('[ERROR]: Invalid operation').message

puts LogLineParser.new('[ERROR]: Invalid operation').log_level

puts LogLineParser.new('[ERROR]: Invalid operation').reformat
