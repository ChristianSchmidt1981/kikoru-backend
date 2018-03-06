require 'Entity/Product';

class SearchProduct
  def getByGroupId(productGroupId)
    list = Array.new();
    
    case productGroupId
      when "1"
        product = Product.new(
          1,
          'Tshirt',
          ['XS', 'S'],
          'Cras in nunc non ipsum duo cursus ultrices est',
          '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
          '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
          );
        list.insert(-1, product);
        
    
        when "2"
          product = Product.new(
            2,
            'Jacket',
            ['M'],
            'Cras in nunc non ipsum duo cursus ultrices est',
            '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
            '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
            );
          list.insert(-1, product);
    
        when "3"
          product = Product.new(
             3,
             'Schuhe',
             ['L'],
             'Cras in nunc non ipsum duo cursus ultrices est',
             '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
             '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960'
          );
          list.insert(-1, product);
                
        else
          result = "No such method"
     end

    return list;
  end
end