# Sets what files to watch so as you make changes to content, stylesheets, layouts, etc
# the browser will automatically refresh.
# Requires the 'guard' & 'guard-livereload' gems found in the 'Gemfile'

# options (these are the defaults)
# :api_version => '1.6'  
# :host => '0.0.0.0'     
# :port => '35729'       
# :apply_js_live => true 
# :apply_css_live => true
# :grace_period => 0

# you can set the options with something like 
#{ }"guard 'livereload', :apply_js_live => 'false', :apply_css_live => 'false' do"

guard 'livereload' do
  watch(%r{content/.+\.(erb|haml|md|markdown|html|yaml|sass|scss|css)})
  watch(%r{layouts/.+\.(erb|haml|md|markdown|html|yaml)})
end