class CreatePaymentForms < ActiveRecord::Migration
  def self.up
    create_table :payment_forms do |t|
      t.string :name 
   end
  end

  def self.down
    drop_table :payment_forms
  end
end
