class OrderDetail < ApplicationRecord

  enum making_status: { cannot: 0, wait: 1, making: 2, finish: 3 }

  belongs_to :order
  belongs_to :item

end
