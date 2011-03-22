class AddFinanceFeeCollectionIdToFinanceFeeParticulars < ActiveRecord::Migration
  def self.up
    add_column :finance_fee_particulars, :finance_fee_collection_id, :integer

    execute <<-SQL
      ALTER TABLE finance_fee_particulars
        ADD CONSTRAINT fk_particulars_collection
        FOREIGN KEY (finance_fee_collection_id)
        REFERENCES finance_fee_collections(id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
    SQL

  end

  def self.down
    execute <<-SQL
      ALTER TABLE finance_fee_particulars DROP FOREIGN KEY fk_particulars_collections
    SQL
    execute <<-SQL
      ALTER TABLE finance_fee_particulars DROP COLUMN finance_fee_collections_id
    SQL

    remove_column :finance_fee_particulars, :finance_fee_collections_id
  end
end
