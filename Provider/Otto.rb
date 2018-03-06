require "Provider/AbstractProvider"
require "Entity/SinglePrice"

class Otto < AbstractProvider
  def self.getProduct (product)
    if rand(1...3) == 1 then
      return SinglePrice.new(
        'Otto',
        product.getId(),
        name,
        rand(11.99..99.99).round(2),
        'EUR'
        );
    end
  end
end