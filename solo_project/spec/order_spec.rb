require 'order'

describe Order do
    it "allows the user to view the menu" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        expect(order.view_menu).to eq ({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
    end

    it "checks that the item exists on the menu" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        expect(order.exist_in_menu?("Veggie delight")).to eq true
    end

    it "checks that the item exists on the menu" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        expect(order.exist_in_menu?("Vegan delight")).to eq false
    end

    it "allows the user to view their basket when empty" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        expect(order.basket).to eq "Your basket is empty. Order total: 0"
    end

    it "allows the user to add items to their basket and view them" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        order.add("Veggie delight")
        expect(order.basket).to eq [{"Veggie delight" => 10}, "Order total: 10"]
    end

    it "returns an error if the item does not exist on the menu" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        expect{ order.add("Vegan delight") }.to raise_error "Item not found"
    end
end