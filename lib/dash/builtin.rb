module Dash
  module Builtin
    class << self
      fattr(:all) { {} }
      def add(name,&b)
        all[name] = b
      end
    end
  end
end

#BUILTINS['cd'] = lambda { |dir| current_dir = dir }
#BUILTINS['exit'] = lambda { |*args| exit }
