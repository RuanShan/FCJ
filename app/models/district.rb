class District < ActiveRecord::Base
  include FixerExtend

  #self.table_name="district"
  self.list_cols=["NO","Name","WordNO"]
  self.new_cols=["NO","Name","WordNO"]
  self.edit_cols=["NO","Name","WordNO"]
end
