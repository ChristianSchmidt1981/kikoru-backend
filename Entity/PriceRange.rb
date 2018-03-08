class PriceRange
  def initialize(min, max)
    @min = min;
    @max = max;
  end
  
  def getMin()
    return @min;
  end

  def getMax()
    return @max;
  end

  def setMin(min)
    @min = min;
  end
  
  def setMax(max)
    @max = max;
  end
  
  def setAutomatic(value)
    if (value < self.getMin() || self.getMin() === 0.0) then
      if self.getMax() === 0.0 then
        self.setMax(self.getMin);
      end
      self.setMin(value);
    end
    if (value > self.getMax()) then
      self.setMax(value);
    end
  end

  def as_json(options={})
       {
           min: @min,
           max: @max,
       }
   end

   def to_json(*options)
       as_json(*options).to_json(*options)
   end
end