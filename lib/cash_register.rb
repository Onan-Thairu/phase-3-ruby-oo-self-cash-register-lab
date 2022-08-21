require "pry"

class CashRegister
    attr_accessor :total, :discount

    items = []

    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
    end

    def apply_discount
        if (self.discount != 0)
            percentage_discount = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * percentage_discount).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    # def items
    #     self.items
    # end
end

haya = CashRegister.new

