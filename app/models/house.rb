class House < ActiveRecord::Base
  self.table_name="house"
  include FixerExtend
end
