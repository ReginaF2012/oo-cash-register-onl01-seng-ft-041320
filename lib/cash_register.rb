class CashRegister 
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 

  def add_item(item_name,item_price, quantity = 1)
    @quantity = quantity
    @total = @total + item_price
  end 
end 