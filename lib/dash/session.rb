module Dash
  module BuiltinMod
    module ClassMethods
      fattr(:builtins) { {} }
      def builtin(name,&b)
        self.builtins[name.to_s] = b
      end
    end

    module InstanceMethods
      def dispatch_builtin(name,*args)
        b = klass.builtins[name.to_s]
        instance_exec(*args,&b)
      end
      def builtin?(name)
        !!klass.builtins[name.to_s]
      end
    end

    def self.included(mod)
      super
      mod.send :extend,ClassMethods
      mod.send :include, InstanceMethods
    end
  end

  class Session
    include FromHash
    include BuiltinMod
    fattr(:current_dir) { "/" }
    attr_accessor :image

    builtin(:cd) do |dir|
      if dir =~ /\//
        self.current_dir = dir
      else
        self.current_dir = File.expand_path("#{current_dir}/#{dir}")
      end
      #run_in_docker "ls"
      nil
    end
    builtin(:exit) do |*args|
      Kernel.exit(*args)
    end
    builtin(:image) do |name|
      self.image = name
    end
    builtin(:reload_dash) do
      Dash.load!
      nil
    end

    def dir_exists?(dir)
      #run_in_docker "if test -d #{dir}; then echo 'exist'; fi "
    end

    def run_in_docker(cmd)
      #puts "RID: current_dir: #{current_dir}, cmd: #{cmd}"
      raise "no image" unless image.present?
      cmd = "docker run -w #{current_dir} #{image} #{cmd}"
      puts "RID: #{cmd}"

      pid = fork do
        exec cmd
      end

      Process.wait pid
    end

    def dispatch(str)
      parts = str.split(" ")
      name = parts[0]
      args = parts[1..-1]

      if builtin?(name)
        dispatch_builtin(name,*args)
      else
        run_in_docker(str)
      end
    end

    def prompt
      "#{image} | #{current_dir} ~> "
    end

    def run_line(line)
      res = dispatch(line)
      #puts res if res.present?
      print prompt
    end

    def run!
      print prompt
      loop do
        line = STDIN.gets
        run_line line
      end
    end
  end
end