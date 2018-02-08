# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  # config.logo = '/vendor/assets/images/logo/spree_50.png'
  # config.admin_interface_logo = '/vendor/assets/images/logo/spree_50.png'
end

Spree.user_class = "Spree::User"

attachment_config = {
  styles: {
    mini: '48x48>', # thumbs under image
    small: '100x100>', # images on category view
    product: '600x600>', # full product image
    large: '1000x1000' # light box image
  }, convert_options: {
    all: '-auto-orient -colorspace sRGB -quality 75 -interlace Line'
  }
}

attachment_config.each do |key, value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
end
