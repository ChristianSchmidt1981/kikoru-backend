class SearchResultProduct
  def initialize(id, name)
    @id = id;
    @name = name;
  end
  
  def getName()
    return @name
  end

  def getId()
    return @id
  end
  
  def as_json(options={})
         {
             id: @id,
             name: @name
         }
     end
  
     def to_json(*options)
         as_json(*options).to_json(*options)
     end
end
