require_relative "Provider/Otto"
require_relative "Provider/Zalando"
require_relative "Provider/Amazon"
require_relative "Entity/Product"
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
      Zalando
    ];

    foundedProduct = self.getProductData(id);
    # product = Product.new(foundedProduct.getId(), foundedProduct.getName());
    
    
    mutex = Mutex.new

    
    j = 0;
    while j < foundedProduct.length()  do
      threads = (1..3).map do |i|
            Thread.new(i) do |i|
          
              mutex.synchronize do
                puts costumer, i;
                priceData = costumer[i - 1].getProduct(foundedProduct[j-1]);
          
                if priceData then
                  puts 'jo', j;
                  puts priceData.to_json;
                  foundedProduct[j-1].addPrice(priceData);
                  # sleep(rand(0..1))
                end
              end
            end
          end
       j +=1
    end
    
              
    threads.each {|t| t.join}
            
    return foundedProduct;
  end
end