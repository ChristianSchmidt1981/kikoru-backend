require_relative "AbstractProvider"
require_relative "../Entity/SinglePrice"

class Amazon < AbstractProvider
  def self.getProduct (product)
      return SinglePrice.new(
        'Amazon',
        product.getId(),
        name,
        rand(11.99..99.99).round(2),
        'EUR');
  end
end