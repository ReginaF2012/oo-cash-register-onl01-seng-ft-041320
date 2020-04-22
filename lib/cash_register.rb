class CashRegister 
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end 

  def add_item(item_name,item_price, quantity = 1)
    @item_price = item_price
    @quantity = quantity
    @total = @total + item_price * @quantity
    @items << item_name
  end 
  
  def apply_discount
    amount_discount = (@item_price * @discount.to_f)%100
    @total = @total - amount_discount
  end 
end 