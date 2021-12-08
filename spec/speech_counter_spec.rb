require_relative '../lib/speech_counter.rb'

describe SpeechCounter do
  let(:speeches) { SpeechExtractor.extract(File.open("./spec/fixtures/macbeth.xml")) }


  context '#count_lines' do
    it 'counts speech lines for each actor' do
        result = SpeechCounter.count_lines(speeches)

        expect(result['First witch']).to eq(33)
    end
  end
end
