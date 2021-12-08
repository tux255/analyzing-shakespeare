require 'open-uri'

class XmlLoader
  def self.load(file_url)
    OpenURI.open_uri(file_url)
  end
end
