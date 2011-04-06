class AddPaymentFormToFinanceTransaction < ActiveRecord::Migration
  def self.up
    add_column :finance_transactions, :payment_form, :integer
  end

  def self.down
    remove_column :finance_transactions, :payment_form
  end
end
