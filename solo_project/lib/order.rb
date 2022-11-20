class Order
    def initialize(menu)
        @menu = menu
        @basket = []
    end
  
    def view_menu
      return @menu
    end
  
    def exist_in_menu?(dish)
      if @menu.include? dish
        return true
      else
        return false
      end
    end
  
    def add(dish)
      if exist_in_menu?(dish) == true
        price = @menu[dish]
        item = {dish => price}
        @basket.push << item
      else
        fail "Item not found"
      end
    end
  
    def basket
        if @basket.empty?
            return "Your basket is empty. Order total: 0"
        else
            order_total = 0
            @basket.each do |x|
                x.each do |y, z|
                    order_total += z
                end
            end
        end
        order_output = ["Order total: #{order_total}"]
            return @basket + order_output
    end
end

