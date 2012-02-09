class Dgorganise < ActiveRecord::Base
  include FixerExtend
  acts_as_nested_set
  has_many :dgemployees, :foreign_key => "Org_ID"

  self.new_cols=[:Name,:NO,:PhoneNO,:Memo]

end