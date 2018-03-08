require_relative 'Entity/Product';
require_relative 'ProductGroupList';

class SearchProduct
  def getByGroupId(productGroupId)
    productGroupIdList = self.getProductGroupIds(productGroupId);
    list = Array.new();
    i = 1;
    
    while (i < productGroupIdList.length()) do
      case productGroupIdList[i]
            when 1
              list = (list + self.getProducts4Group1()).uniq;
      
            when 2
              list = (list + self.getProducts4Group2()).uniq;
          
            when 3
              list = (list + self.getProducts4Group3()).uniq;
                      
            else
              result = "No such method";
           end
           i += 1;
    end

    return list;
  end
  
  # @todo move into the db
  def getProducts4Group1()
      productList = Array.new();
      productList.insert(-1,Product.new(
                       3,
                       'Schuhe',
                       ['L'],
                       'Cras in nunc non ipsum duo cursus ultrices est',
                       '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
                       '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
       ));
       return productList;
    end
    
  # @todo move into the db  
  def getProducts4Group2()
      productList = Array.new();
      productList.insert(-1,Product.new(
                       3,
                       'Schuhe',
                       ['L'],
                       'Cras in nunc non ipsum duo cursus ultrices est',
                       '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
                       '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
       ));
       return productList;
    end
    
  # @todo move into the db
  def getProducts4Group3()
    productList = Array.new();
    productList.insert(-1,Product.new(
                     3,
                     'Schuhe',
                     ['L'],
                     'Cras in nunc non ipsum duo cursus ultrices est',
                     '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
                     '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
     ));
     return productList;
  end
  
  def getProductGroupIds(id) 
    productGroupList = ProductGroupList.new();
    productGroup = productGroupList.get().findGroupById(id);

    return productGroup.getAllGroupIds();
  end
end