class Order < ApplicationRecord

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { payment_wait: 0, payment_check: 1, making: 2, send_preparation: 3, sent: 4 }

  has_many :order_details, dependent: :destroy
  belongs_to :customer

end
