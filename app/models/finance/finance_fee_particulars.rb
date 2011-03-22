class FinanceFeeParticulars < ActiveRecord::Base

  belongs_to :fee_category ,:class_name => "FinanceFeeCategory"
  belongs_to :student_category
  belongs_to :fee_collection, 
             :class_name => "FinanceFeeCollection", 
             :foreign_key => 'id'
  validates_presence_of :name,:amount
  validates_numericality_of :amount
  cattr_reader :per_page
  @@per_page = 10
  
  

end
