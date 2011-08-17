require 'nanoc3/tasks'

# begin
#   # Try to require the preresolved locked set of gems.
#   require File.expand_path('../.bundle/environment', __FILE__)
#   rescue LoadError
#   # Fall back on doing an unlocked resolve at runtime.
#   require "rubygems"
#   require "bundler"
#   Bundler.setup
# end

require 'nanoc3/tasks'

require 'fileutils'
%w{yaml}.each{|lib| require lib}

config  = YAML.load(File.open("config.yaml"))

def path_tree(path,to_copy=[])
  tree = []
  raise "WHUT? Path empty!" if path.nil? || path.empty?
  Dir.glob("#{path}/*").each do |path|
    if File.directory?(path)
      tree << path_tree(path)
    else
      tree << path 
      path_tree(path)
    end 
  end 
  tree.flatten
end

desc "Watches and automatically compiles the site"
task :auto => :compile do
  sh "nanoc auto"
end

desc "Compile SCSS for main files & widgets into CSS"
task :compile_css do
  puts "Compliling SCSS into CSS"
  # compile the sites main CSS
  sh "compass compile --output-style compressed --force"
  # compiles the CSS for past site versions
end

desc "Compile static files"
task :compile do
  puts "Compiling content."
  sh "nanoc compile"
end

task :sync do
  puts "Syncing site to remote home directory"
  # sh "rsync ... -r --force -v -v"
end

task :build => [:compile_css, :compile]

task :deploy => [:build, :sync]

# task :deploy => [:build, :sync]
# task :deploy => [:compile, :sync]

task :default => :deploy