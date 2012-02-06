class District < ActiveRecord::Base
  self.table_name="district"
  cattr_accessor :list_cols,:edit_cols,:new_cols
  self.list_cols=["NO","Name","WordNO"]
  self.new_cols=["NO","Name","WordNO"]
  self.edit_cols=["NO","Name","WordNO"]
end
