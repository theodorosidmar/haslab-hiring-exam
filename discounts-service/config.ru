# Load all files generated by the protocol buffer (pb) compiler
this_dir = File.expand_path(File.dirname(__FILE__))
pb_dir = File.join(this_dir, 'app', 'pb')
$LOAD_PATH.unshift(pb_dir) unless $LOAD_PATH.include?(pb_dir)

# Require all protocol buffer (pb)
Dir["#{pb_dir}/*.rb"].each do |file|
  require file
end

# Start application
require_relative 'app'
Application.start
