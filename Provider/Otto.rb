require_relative "AbstractProvider"
require_relative "../Entity/SinglePrice"

class Otto < AbstractProvider
  def self.getProduct (product)
      return SinglePrice.new(
        'Otto',
        product.getId(),
        name,
        rand(11.99..99.99).round(2),
        'EUR'
        );
  end
end