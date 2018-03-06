class AbstractProvider
  class << self; end

  def self.getProduct (id)
    raise NotImplementedError, 'implementation getProduct is missing';
  end
end