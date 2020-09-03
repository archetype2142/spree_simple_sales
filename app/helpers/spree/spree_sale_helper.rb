module Spree
  module SpreeSaleHelper
    def display_original_price(product_or_variant)
      product_or_variant.
        original_price_in(current_currency).
        display_price_including_vat_for(current_price_options).
        to_html
    end
  end
end
