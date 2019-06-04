class MusicImporter

  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).reject { |f| File.directory?(f) }
  end

  def import
  end

end
