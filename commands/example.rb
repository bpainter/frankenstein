# Used to extend commands in Nanoc and depreciates the need for a separate Rakefile.
# Based on Cri, http://rubydoc.info/gems/cri/2.0.0/file/README.md

usage       'dostuff [options]'
aliases     :ds, :stuff
summary     'does stuff'
description 'This command does a lot of stuff. I really mean a lot.'

flag   :h, :help,  'show help for this command' do |value, cmd|
  puts cmd.help
  exit 0
end
flag   :m, :more,  'do even more stuff'
option :s, :stuff, 'specify stuff to do', :argument => :optional

run do |opts, args, cmd|
  stuff = opts[:stuff] || 'generic stuff'
  puts "Doing #{stuff}!"

  if opts[:more]
    puts 'Doing it even more!'
  end
end