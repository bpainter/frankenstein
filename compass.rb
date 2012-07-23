# ----------------------------------------------------------------------
# Additional Compass plugins
#   Susy - Responsive Grid System: http://susy.oddbird.net/
# ----------------------------------------------------------------------
require 'susy'

# Set this to the root of your project when deployed:
http_path       = "/"
project_path    = "."

css_dir         = "output/assets/stylesheets"
sass_dir        = "assets/stylesheets"
images_dir      = "assets/images"
javascripts_dir = "assets/javascripts"
fonts_dir       = "assets/fonts"

# You can select your preferred output style here (can be overridden via the command line):
# :expanded or :nested or :compact or :compressed
# build compass for production
# compass compile -e production --force
# other output styles are :nested, :expanded, :compact, or :compressed
# output_style    = (environment == :production) ? :compressed : :expanded
output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# Preferred syntax.
# :sass or :scss
preferred_syntax = :scss
