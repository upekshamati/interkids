class CreateCashBoxes < ActiveRecord::Migration
  def self.up
    create_table :cash_boxes do |t|
      t.string  :name,     :limit => 50
      t.string  :location, :limit => 200
      t.integer :manager
    end
  end

  def self.down
    drop_table :cash_boxes
  end
end
