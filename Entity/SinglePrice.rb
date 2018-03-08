class SinglePrice
  def initialize(company, id, name, price, currencyCode)
    @company = company;
    @id = id;
    @name = name;
    @price = price;
    @currencyCode = currencyCode;
  end
  
  def getPrice()
    return @price;
  end
  
  def as_json(options={})
       {
           company: @company,
           id: @id,
           name: @name,
           price: @price
       }
   end

   def to_json(*options)
       as_json(*options).to_json(*options)
   end
end