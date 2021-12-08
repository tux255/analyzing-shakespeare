require 'active_support/core_ext/hash'
require 'pry'

class SpeechExtractor
  def self.extract(xml)
    acts = Hash.from_xml(xml).dig('PLAY','ACT')

    result = []

    acts.each do |act|
      act['SCENE'].each do |scene|
        result += scene['SPEECH'].delete_if {|speech| speech['SPEAKER'] == 'ALL'}
      end
    end

    result
  end
end
