Spree::Image.class_eval do
  attachment_definitions[:attachment] = {
    style: {
      mini: '48x48>', # thumbs under image
      small: '100x100>', # images on category view
      product: '600x600>', # full product image
      large: '1000x1000' # light box image
    }, convert_options: {
      all: '-auto-orient -colorspace sRGB -quality 75 -interlace Line'
    }
   }
end
