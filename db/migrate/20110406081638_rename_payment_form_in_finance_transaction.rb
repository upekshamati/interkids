class RenamePaymentFormInFinanceTransaction < ActiveRecord::Migration
  def self.up
    change_table :finance_transactions do |t|
      t.rename :payment_form, :payment_form_id
    end
  end

  def self.down
    change_table :finance_transactions do |t|
      t.rename :payment_form, :payment_form_id
    end
  end
end
