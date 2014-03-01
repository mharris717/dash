module Dash
  class CommandLine
    fattr(:options) do
      require 'trollop'
      Trollop::options do
        opt :image, "Docker Image", :type => :string
        opt :dir, "Starting Dir", :type => :string, :default => "/"
      end
    end
    fattr(:rest) do
      ARGV.join(" ")
    end
    def image
      options['image'] || options[:image]
    end
    def dir
      options['dir'] || options[:dir]
    end
    def session
      puts options.inspect
      res = Session.new
      res.current_dir = dir
      res.image = image if image.present?
      res
    end
    def run!
      session.run!
    end
  end
end