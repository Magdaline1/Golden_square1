require 'checkout'

describe Checkout do

    xit "allows user to checkout" do
        fake_order = double :order, menu: [{"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10}]
        allow(fake_order).to receive(:add).with("Pepperoni").and_return nil
        fake_order.add("Pepperoni")
        checkout = Checkout.new(fake_order)
        expect(checkout.pay(22)).to eq "Thank you! Your order was placed and will be delivered before 18:52"
    end #expect is not pay, it should be order status!

    it "allows user to view an itemised receipt once paid" do
        fake_order = double :order, menu: [{"Margherita" => 8, "Pepperoni" => 10, "Meat feast" => 12, "Veggie delight" => 10}]
        allow(fake_order).to receive(:add).with("Pepperoni").and_return nil
        allow(fake_order).to receive(:add).with("Meat feast").and_return nil
        fake_order.add("Pepperoni")
        fake_order.add("Meat feast")
        checkout = Checkout.new(fake_order)
        checkout.pay(22)
        expect(checkout.print_receipt).to eq [{"Pepperoni" => 10}, {"Meat feast" => 12}, "Order total: 22"]
    end

    xcontext "fails" do
        it "fails if payment is insufficient" do
            fake_order = double :order
            fake_order.add("Pepperoni")
            fake_order.add("Meat feast")
            checkout = Checkout.new(fake_order)
            expect{ checkout.pay(15) }.to raise_error ("Order failed. Please try again")
        end

        it "fails to print a recipt if order is not paid" do
            fake_order = double :order
            fake_order.add("Pepperoni")
            fake_order.add("Meat feast")
            checkout = Checkout.new(fake_order)
            checkout.pay(15)
            expect{ checkout.print_receipt }.to raise_error ("Order failed. Please try again")
        end
    end
end