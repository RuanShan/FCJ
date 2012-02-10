class Dgwordbooktype < ActiveRecord::Base
  self.table_name= 'dgwordbooktype'
  include FixerExtend
  self.manager_class = "dgwordbooktype"
  has_many :dgwordbooks, :foreign_key=>"dgwordbooktypeID"
end
