require_relative "AbstractProvider"
require_relative "../Entity/SinglePrice"

class HugoBoss < AbstractProvider
  def self.getProduct (product)
    #if rand(1...2) == 1 then
      return SinglePrice.new(
        'Hugo Boss',
        product.getId(),
        name,
        rand(11.99..99.99).round(2),
        'EUR'
       );
    #end
    
  end
end