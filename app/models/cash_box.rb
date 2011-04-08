class CashBox < ActiveRecord::Base
  has_many :transaction_categories,
           :class_name => 'FinanceTransactionCategory'
end
