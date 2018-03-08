require_relative "Provider/Otto";
require_relative "Provider/Armani";
require_relative "Provider/HugoBoss";
require_relative "Provider/Zalando";
require_relative "Provider/Amazon";
require_relative "Entity/Product";
require_relative "SearchProduct";
#require "rubygems";
#require "faraday";


class FetchProducts
  def getProductData(id)
    # search product - id
    searchProductEngine = SearchProduct.new();

    foundedProduct = searchProductEngine.getByGroupId(id);

    if !foundedProduct then
      raise 'product not found!';
    end
    
    return foundedProduct;
  end
  
  def get(id)
    costumer = [
      Amazon,
      Otto,
      Zalando,
      HugoBoss,
      Armani
    ];

    foundedProduct = self.getProductData(id);    
    mutex = Mutex.new;
    j = 0;
    threads = Array.new();

    while j < foundedProduct.length()  do
      threads2 = (1..5).map do |i|
            Thread.new(i, j) do |i, j|
          
              mutex.synchronize do
                priceData = costumer[i - 1].getProduct(foundedProduct[j-1]);

                if priceData then
                  foundedProduct[j-1].addPrice(priceData);
                  if (rand(0..1) === 1) then
                    sleep(rand(0..1))
                  end
                end
              end
            end
          end
        threads = (threads + threads2);
        j +=1
    end
              
    threads.each {|t| t.join}
            
    return foundedProduct;
  end
end