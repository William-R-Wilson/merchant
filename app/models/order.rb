class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  
  def total
    sum = 0
    self.order_items.each  do |t| 
      sum += t.subtotal
    end
    sum
  end

end
