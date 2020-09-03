module Spree
  module VariantDecorator
    def price_in(currency)
      return super unless sale_price.present?
      ::Spree::Price.new(variant_id: self.id, amount: self.sale_price, currency: currency)
    end

    def original_price_in(currency)
      prices.detect { |price| price.currency == currency } || prices.build(currency: currency)
    end
  end
end

Spree::Variant.prepend Spree::VariantDecorator
