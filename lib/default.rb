include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Breadcrumbs
include Nanoc3::Helpers::Capturing
include Nanoc3::Helpers::Filtering
include Nanoc3::Helpers::HTMLEscape
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Text
include Nanoc3::Helpers::XMLSitemap

# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

# It's not a good idea to place images or other static files in the /content directory.
# If you're autocompiling the pages then Nanoc will have to churn through all of your
# static assets causing the autocompile to take a while.
# To prevent this we keep our static assets outside the scope of the '/content' directory
# and copy over the assets in the preprocess rule in 'Rules' file.
def copy_assets
  FileUtils.cp_r 'assets/.', 'output/assets/' 
end