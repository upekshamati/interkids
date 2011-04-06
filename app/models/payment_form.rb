class PaymentForm < ActiveRecord::Base
  has_many :finance_transactions
end
