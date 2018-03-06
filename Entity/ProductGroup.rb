class ProductGroup
  def initialize(id, name, link, image, description)
    @id = id;
    @name = name;
    @link = link;
    @image = image;
    @description = description;
  end
  
  def as_json(options={})
         {
             id: @id,
             name: @name,
             link: @link,
             image: @image,
             description: @description
         }
     end
  
     def to_json(*options)
         as_json(*options).to_json(*options)
     end
end
