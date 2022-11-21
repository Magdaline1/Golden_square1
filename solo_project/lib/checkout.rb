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
        # send text "Thank you! Your order was placed and will be delivered before 18:52"
    #end

end

=begin
issues with Twilio, unable to create login for text.

order_status
        @client = Twilio::REST::Client.new
        @client.messages.create

require './order'

test = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
test.add("Veggie delight")
test_2 = Checkout.new(test)
test_2.pay(25)
p test_2.order_status

=end