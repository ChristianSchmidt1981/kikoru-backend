class ProductGroup
  def initialize(id, name, link, image, description)
    @id = id;
    @name = name;
    @link = link;
    @image = image;
    @description = description;
    @subGroups = Array.new();
  end
  
  def getId()
    return @id;
  end

  def getSubGroups()
      return @subGroups;
   end
    
  def addGroup(productGroup)
    @subGroups.insert(-1, productGroup);
  end
  
  def findGroupById(id)
    if (@id === id) then
      return self;
    end
    
    allGroupIds = self.getAllGroups();
    i = 0;

    while (i < allGroupIds.length()) do
      if allGroupIds[i].getId() === id then
        return allGroupIds[i];
      end
      i += 1;
    end
    
    return nil;
  end
  
  def getAllGroups()
    allGroup = Array.new();
    allGroup.insert(-1, self);
    i = 0;

    while i < @subGroups.length() do
      allGroup = (allGroup + @subGroups[i].getAllGroups());
      i += 1;
    end
    
    return allGroup;
  end
  
  def getAllGroupIds()
    allGroupIds = Array.new();
    allGroupIds.insert(-1, @id);
    @subGroups.each do |group|
      allGroupIds = (allGroupIds + group.getAllGroupIds());
    end
    
    return allGroupIds;
  end
  
  def as_json(options={})
         {
             id: @id,
             name: @name,
             link: @link,
             image: @image,
             description: @description,
             subGroups: @subGroups
         }
     end
  
     def to_json(*options)
         as_json(*options).to_json(*options)
     end
end
