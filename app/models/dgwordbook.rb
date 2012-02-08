class Dgwordbook < ActiveRecord::Base
  include FixerExtend
  self.table_name= 'dgwordbook'
  
  self.list_cols=["id","Value","Memo"]
  self.new_cols=["id","Name","Memo"]
  self.edit_cols=["id","Name","Memo"]
end
