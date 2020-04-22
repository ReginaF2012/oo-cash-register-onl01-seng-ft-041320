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
    if discount > 0
    @total = @total - ((@discount * @item_price)/100)
    "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
   end
  end 
end 