$:.unshift File.expand_path( File.join( File.dirname(__FILE__), "..", "lib" ) )

require 'stickler/gem_server_deflater'
require 'stickler/rack/index'

gem_dir = File.join( File.expand_path( File.dirname( __FILE__ ) ), "tmp" )

use ::Stickler::Middleware::Compression
use ::Stickler::Middleware::Index, :repo_root => gem_dir
run ::Sinatra::Base