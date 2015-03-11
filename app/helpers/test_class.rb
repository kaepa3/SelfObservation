class Testing

  attr_reader :title, :price
  def initialize
    @title = "これが"
    @price = 2000
  end

  def change_price val
    @price = val
  end

  def get_val
    return @price ,@title
  end
end

