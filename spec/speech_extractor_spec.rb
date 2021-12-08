require_relative '../lib/speech_extractor.rb'

describe SpeechExtractor do
  let(:speeches) {
    SpeechExtractor.extract(
      File.open("./spec/fixtures/macbeth.xml")
    )
  }

  context '#extract' do
    it 'extracts speeches hash from xml' do
      expect(speeches.count ).to eq(382)
    end 

    it 'removes ALL speaker lines' do
      expect(speeches).to_not include(a_hash_including("SPEAKER" => "ALL"))
    end
  end
end
