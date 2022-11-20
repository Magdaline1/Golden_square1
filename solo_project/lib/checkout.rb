class Checkout
    def initialize(order)
        @order = order
        @paid = false
    end
  
    def pay(money)
        order_total = @order.basket[-1].split(" ")[-1].to_i 
        fail "Order failed. Please try again" if money < order_total 
        if money >= order_total
            @paid = true
        end
    end
  
    def print_receipt
        fail "Order failed. Please try again" if @paid == false
        if @paid == true
            return @order.basket
        end
    end
  
    #def order_status
        #pay = true
      # checks if order has been paid
      # send text "Thank you! Your order was placed and will be delivered before 18:52"
    #end

end