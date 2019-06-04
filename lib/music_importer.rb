class MusicImporter

  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).reject { |f| File.directory?(f) }
  end

  def import(filename)
    Song.create_from_filename(filename)
  end

end
