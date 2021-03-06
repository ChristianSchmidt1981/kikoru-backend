require_relative 'PriceRange';

class Product
  def initialize(id, name, size, description, link, image, brand, material)
    @id = id;
    @name = name;
    @size = size; # array
    @description = description;
    @link = link;
    @image = image;
    @price = PriceRange.new(0.0, 0.0);
    @prices = Array.new();
    @brand = brand;
    @material = material;
  end
  
  def getName()
      return @name;
  end
    
  def getId()
      return @id;
  end

  def addPrice(singlePrice)
    @prices.insert(-1, singlePrice);
    @price.setAutomatic(singlePrice.getPrice());
  end
  
  def as_json(options={})
         {
             id: @id,
             name: @name,
             price: @price,
             prices: @prices,
             size: @size,
             description: @description,
             link: @link,
             image: @image,
             brand: @brand
         }
     end
  
     def to_json(*options)
         as_json(*options).to_json(*options)
     end
end
