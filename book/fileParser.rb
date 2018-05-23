# This files is used to parse files into lines.
# It could be switched to:
#   1. more performant read method,
#   2. enhanced with fringe case handling.
class FileParser
  attr_accessor :lines
  def initialize(filename)
    @lines = []
    File.foreach(filename).each do |line|
      @lines << line
    end
  end
end
