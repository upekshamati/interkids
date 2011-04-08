class AddCashBoxToFinanceTransactionCategory < ActiveRecord::Migration
  def self.up
    add_column :finance_transaction_categories, :cash_box_id, :integer
  end

  def self.down
    remove_column :finance_transaction_categories, :cash_box_id
  end
end
