# Enable ORI with color
require 'rubygems'
require 'ori'

# Load Wirble if available
begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
  require 'irb/completion'
end

class Object
  # Return only the methods not present on basic objects
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end
end
