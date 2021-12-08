class String
  def count
    1
  end
end

class Array
  def capitalize
    self.join(', ')
  end
end

class SpeechCounter
  def self.count_lines(speeches)
    result = Hash.new(0)
    speeches.each do |speech|
      result[speech['SPEAKER'].capitalize] += speech['LINE'].count
    end
    result
  end
end
