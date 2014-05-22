class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price.to_f
    raise ArgumentError, "No ISBN number supplied" if @isbn == nil || @price <= 0
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end


book = BookInStock.new(1111, 123)
puts book.isbn
puts book.price
puts book.price_as_string
