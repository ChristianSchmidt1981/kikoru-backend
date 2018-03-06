require 'Entity/ProductGroup';

class ProductGroupList
  def get()
    list = Array.new();
    
    product = ProductGroup.new(
      1,
      'Men', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'men bla bla men men bla bla men men bla bla men men bla bla men men bla bla men men bla bla men '
    );
    list.insert(-1, product);
    
    product = ProductGroup.new(
          2,
          'Women', 
          '#',
          '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
          'women bla women women bla women women bla women women bla women women bla women women bla women '
        );
    list.insert(-1, product);
    
    product = ProductGroup.new(
          3,
          'Children', 
          '#',
          '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
          'children bla children children bla children children bla children children bla children children bla children '
        );
    list.insert(-1, product);
    return list;
  end
end