# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

# ----------------------------------------------------------------------
# Helpers
# Nanoc has a number of handy helpers that handle some basic needs.
# http://nanoc.stoneship.org/docs/api/3.4/Nanoc/Helpers.html
# ----------------------------------------------------------------------
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Breadcrumbs
include Nanoc::Helpers::Capturing
include Nanoc::Helpers::Filtering
include Nanoc::Helpers::HTMLEscape
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::Text
include Nanoc::Helpers::XMLSitemap

# ----------------------------------------------------------------------
# custom setup settings
# ----------------------------------------------------------------------
# It's not a good idea to place images or other static files in the /content directory.
# If you're autocompiling the pages then Nanoc will have to churn through all of your
# static assets causing the autocompile to take a while.
# To prevent this we keep our static assets outside the scope of the '/content' directory
# and copy over the assets in the preprocess rule in 'Rules' file.
def copy_assets
  # FileUtils.cp_r 'assets/.', 'output/assets/' 
end