class Section < ActiveRecord::Base
  self.table_name="section"
  include FixerExtend
  self.list_cols=["NO","DistrictID","Name","CreateDate"]
  self.new_cols=["NO","DistrictID","Name","CreateDate",["Address"],["Memo"]]
  self.edit_cols=["NO","DistrictID","Name","CreateDate",["Address"],["Memo"]]
  
  belongs_to "district", :foreign_key=>"DistrictID"
end
