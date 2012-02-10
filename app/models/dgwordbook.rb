class Dgwordbook < ActiveRecord::Base
  self.table_name= 'dgwordbook'
  include FixerExtend
  self.manager_class = "dgwordbooktype"
  belongs_to :dgwordbooktype, :foreign_key=>"dgwordbooktypeID"
  self.list_cols=["id","Value","Memo"]
  self.new_cols=["dgwordbooktypeID","id","Key","Value","Priority","Memo"]
  self.edit_cols=["id","Value","Memo"]
end
