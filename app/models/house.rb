class House < ActiveRecord::Base
  self.table_name="house"
  include FixerExtend
  self.max_line_cols = 4
end
