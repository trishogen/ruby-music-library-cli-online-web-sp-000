class MusicLibraryController << MusicImporter

  attr_reader :path

  def initialize(path)
    @path = path
    MusicImporter.new(path)
  end
  
end
