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
                       '//cdn.shopify.com/s/files/1/1825/4753/products/67837080-59c1-43e8-ac95-46859feebb2a_5627faa7-f96b-458c-b6f3-c342ed99716d_large.jpg?v=1488853105',
                       'Hugo Boss',
                       ['Cotton', 'Polyester']
       ));
      productList.insert(-1,Product.new(
        4,
        'Schuhe',
        ['L'],
        'Cras in nunc non ipsum duo cursus ultrices est',
        '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
        '//cdn.shopify.com/s/files/1/1825/4753/products/a0fbc1d2-2f3a-4928-bd4e-2a22eb960ce8_a7bf4f51-a2c8-4d87-a983-a134ad61fda3_large.jpg?v=1488853116',
        'Hugo Boss',
        ['Cotton', 'Polyester']
));
        productList.insert(-1,Product.new(
  4,
  'Schuhe',
  ['L'],
  'Cras in nunc non ipsum duo cursus ultrices est',
  '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
  '//cdn.shopify.com/s/files/1/1825/4753/products/ffb36633-7f3e-4ac2-8eda-3f5f6c774210_ed99c2b3-24df-4e3b-9f77-518e3d7d5f12_large.jpg?v=1488853174',
  'Hugo Boss',
  ['Cotton', 'Polyester']
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
                       '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960',
                       'Armani',
                       ['Polyester']
       ));
       productList.insert(-1,Product.new(
        3,
        'Schuhe',
        ['L'],
        'Cras in nunc non ipsum duo cursus ultrices est',
        '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
        '//cdn.shopify.com/s/files/1/1825/4753/products/9cff613a-357b-4bd1-996d-8e90c34a267a_a802075d-f427-4dbc-a595-80e51f13fbb8_large.jpg?v=1488853154',
        'Armani',
        ['Polyester']
));
productList.insert(-1,Product.new(
  3,
  'Schuhe',
  ['L'],
  'Cras in nunc non ipsum duo cursus ultrices est',
  '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
  '//cdn.shopify.com/s/files/1/1825/4753/products/047ed2fd-34be-4991-87b9-ef05e226351b_9e684167-a75f-451d-88eb-72c147b8801c_large.jpg?v=1508922347',
  'Armani',
  ['Polyester']
));
productList.insert(-1,Product.new(
  3,
  'Schuhe',
  ['L'],
  'Cras in nunc non ipsum duo cursus ultrices est',
  '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
  '//cdn.shopify.com/s/files/1/1825/4753/products/3b8314cd-d1d4-4713-9f39-2f8dd3c4148e_0ae2e3d4-e394-48cd-8c95-dd1acbb23562_large.jpg?v=1488853225',
  'Armani',
  ['Polyester']
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
                     '//cdn.shopify.com/s/files/1/1825/4753/products/03_ce982bf6-365f-4ad6-8636-208b6b5416fa_large.jpg?v=1488852960',
                     'Hugo Boss',
                     ['Cotton']
     ));
     productList.insert(-1,Product.new(
      3,
      'Schuhe',
      ['L'],
      'Cras in nunc non ipsum duo cursus ultrices est',
      '/collections/men/products/cras-in-nunc-non-ipsum-duo-cursus-ultrices',
      '//cdn.shopify.com/s/files/1/1825/4753/products/bfb56c35-1919-4407-ac3d-b7868789da08_d3b42852-7665-4a74-a2e1-10ba22604dd2_large.jpg?v=1488853080',
      'Hugo Boss',
      ['Cotton']
));

     
     return productList;
  end
  
  def getProductGroupIds(id) 
    productGroupList = ProductGroupList.new();
    productGroup = productGroupList.get().findGroupById(id);

    return productGroup.getAllGroupIds();
  end
end