class CashRegister 
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 

  def add_item(item_name,item_price, quantity = 1)
    @item_price = item_price
    @quantity = quantity
    @total = @total + item_price * @quantity
  end 
  
  def apply_discount
    @total = @total - ((@item_price * @discount)%100)
  end 
end 