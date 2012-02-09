class Dgwordbooktype < ActiveRecord::Base
  self.table_name= 'dgwordbooktype'
  include FixerExtend
  has_many :dgwordbooks, :foreign_key=>"TypeID"
end
