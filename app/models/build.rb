class Build < ActiveRecord::Base
  self.table_name = "build"
  include FixerExtend
end
