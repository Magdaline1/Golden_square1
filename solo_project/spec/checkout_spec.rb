require 'checkout'

describe Checkout do

    it "allows user to view an itemised receipt once paid" do
        fake_order = double :order, basket: [{"Margherita" => 8}, {"Pepperoni" => 10}, "Order total: 18"]
        checkout = Checkout.new(fake_order)
        checkout.pay(18)
        expect(checkout.print_receipt).to eq [{"Margherita" => 8}, {"Pepperoni" => 10}, "Order total: 18"]
    end

    context "fails" do
        it "fails if payment is insufficient" do
            fake_order = double :order, basket: [{"Margherita" => 8}, {"Pepperoni" => 10}, "Order total: 18"]
            checkout = Checkout.new(fake_order)
            expect{ checkout.pay(15) }.to raise_error ("Order failed. Please try again")
        end

        it "fails to print a recipt if order is not paid" do
            fake_order = double :order, basket: [{"Margherita" => 8}, {"Pepperoni" => 10}, "Order total: 18"]
            checkout = Checkout.new(fake_order)
            expect{ checkout.print_receipt }.to raise_error ("Order failed. Please try again")
        end
    end
end