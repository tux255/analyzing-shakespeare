require_relative './lib/xml_loader.rb'
require_relative './lib/speech_extractor.rb'
require_relative './lib/speech_counter.rb'

file_url = 'http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml'

class MacbethAnalyzer
  def initialize(file_url)
    @speeches = SpeechExtractor.extract(
      XmlLoader.load(file_url)
    )
  end

  def analyze
    SpeechCounter.count_lines @speeches
  end
end

ma = MacbethAnalyzer.new(file_url).analyze

ma.each do |k, v| 
  puts "#{v} #{k}"
end
