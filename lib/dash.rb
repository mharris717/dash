#!/usr/bin/env ruby
require 'shellwords'
require 'mharris_ext'
require 'andand'

#current_dir = "/"

#BUILTINS = {}
#BUILTINS['cd'] = lambda { |dir| current_dir = dir }
#BUILTINS['exit'] = lambda { |*args| exit }

module Dash
  class << self
    def load!
      %w(session command_line).each do |f|
        load File.dirname(__FILE__) + "/dash/#{f}.rb"
      end
    end
  end
end

Dash.load!

class Object
  def klass
    self.class
  end
end

if false
loop do
  $stdout.print "#{current_dir} -> "
  line = $stdin.gets.strip
  command, *arguments = Shellwords.shellsplit(line)

  if BUILTINS[command]
    BUILTINS[command].call(*arguments)
  else
    pid = fork {
      cmd = "docker run -w #{current_dir} ruby1 #{line}"
      puts "executing #{cmd}"
      exec cmd
    }

    Process.wait pid
  end
end
end