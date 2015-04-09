class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order_id, :product_id, presence: true
  
  #def product
  #  @product = self.product
  #end
  
  def subtotal
    subtotal = self.product.price * self.quantity.to_i
  end
  
end
