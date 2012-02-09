class Dgorganise < ActiveRecord::Base
  include FixerExtend
  acts_as_nested_set :parent_column => 'dgorganiseID'
  has_many :dgemployees, :foreign_key => "dgorganiseID"
  self.manager_class = "dgorganise"
  self.new_cols=[:dgorganiseID,:Name,:NO,:PhoneNO,:Memo]

end