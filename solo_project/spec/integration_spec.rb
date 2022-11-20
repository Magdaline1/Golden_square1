require 'order'
require 'checkout'

describe 'integration' do
    it "adds items to basket & allows user to checkout" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        order.add("Pepperoni")
        order.add("Meat feast")
        checkout = Checkout.new(order)
        expect(checkout.pay(22)).to eq true
    end

    it "allows user to view an itemised receipt once paid" do
        order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
        order.add("Pepperoni")
        order.add("Meat feast")
        checkout = Checkout.new(order)
        checkout.pay(22)
        expect(checkout.print_receipt).to eq [{"Pepperoni" => 10}, {"Meat feast" => 12}, "Order total: 22"]
    end

    context "fails" do
        it "fails if payment is insufficient" do
            order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
            order.add("Pepperoni")
            order.add("Meat feast")
            checkout = Checkout.new(order)
            expect{ checkout.pay(15) }.to raise_error "Order failed. Please try again"
        end

        it "fails to print a recipt if order is not paid" do
            order = Order.new({"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10})
            order.add("Pepperoni")
            order.add("Meat feast")
            checkout = Checkout.new(order)
            expect{ checkout.print_receipt }.to raise_error "Order failed. Please try again"
        end
    end
end