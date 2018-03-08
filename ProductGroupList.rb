require_relative 'Entity/ProductGroup';

class ProductGroupList
  def get()
    list = ProductGroup.new(0, 'root', '#', '', '');

    list.addGroup(self.getGroupMen());
    list.addGroup(self.getGroupWomen());
    list.addGroup(self.getGroupChildren());

    return list;
  end

  # @todo move this into the db
  def getGroupChildren() 
    product = ProductGroup.new(
      9,
      'Children', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'children clothes blabla childrenchildren clothes blabla childrenchildren clothes blabla childrenchildren clothes blabla children'
    );

    product.addGroup(ProductGroup.new(
      10,
      'Girls', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'girl clothes blabla girl clothes blabla girl clothes blabla girl clothes blabla girl clothes blabla girl clothes blabla '
    ));

    product.addGroup(ProductGroup.new(
      11,
      'Boys', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'boys clothes blabla boys clothes blabla boys clothes blabla boys clothes blabla'
    ));

    product.addGroup(ProductGroup.new(
      12,
      'Baby', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'baby clothes ... blabla baby clothes ... blabla baby clothes ... blabla '
    ));

    return product;
  end

  # @todo move this into the db
  def getGroupWomen() 
    product = ProductGroup.new(
      5,
      'Women', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'women bla bla womenbla bla women women bla bla women bla bla women bla bla women bla bla women'
    );

    product.addGroup(ProductGroup.new(
      6,
      'Clothing', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'women clothing .. bla women clothing .. bla women clothing .. bla women clothing .. bla women clothing .. bla  '
    ));

    product.addGroup(ProductGroup.new(
      7,
      'Shoes', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'women shoes .. bla women shoes .. bla women shoes .. bla women shoes .. bla women shoes .. bla  '
    ));

    product.addGroup(ProductGroup.new(
      8,
      'Accessories', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'women Accessories .. bla women Accessories .. bla women Accessories .. bla women Accessories .. bla women shoes .. bla  '
    ));

    return product;
  end

  # @todo move this into the db
  def getGroupMen() 
    product = ProductGroup.new(
      1,
      'Men', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'men bla bla men men bla bla men men bla bla men men bla bla men men bla bla men men bla bla men '
    );

    product.addGroup(ProductGroup.new(
      2,
      'Clothing', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'men clothing .. bla men clothing .. bla men clothing .. bla men clothing .. bla men clothing .. bla  '
    ));

    product.addGroup(ProductGroup.new(
      3,
      'Shoes', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'men shoes .. bla men shoes .. bla men shoes .. bla men shoes .. bla men shoes .. bla  '
    ));

    product.addGroup(ProductGroup.new(
      4,
      'Accessories', 
      '#',
      '//cdn.shopify.com/s/files/1/1825/4753/files/img_cat_022eb85c-e4c3-466c-a638-1b67c31d6bc8.jpg?v=1490539957',
      'men Accessories .. bla men Accessories .. bla men Accessories .. bla men Accessories .. bla men shoes .. bla  '
    ));

    return product;
  end
end