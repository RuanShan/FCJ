class Dgwordbook < ActiveRecord::Base
  self.table_name= 'dgwordbook'
  include FixerExtend
  
  self.list_cols=["id","Value","Memo"]
  self.new_cols=["id","Name","Memo"]
  self.edit_cols=["id","Name","Memo"]
end
