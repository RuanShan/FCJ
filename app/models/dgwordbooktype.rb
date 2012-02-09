class Dgwordbooktype < ActiveRecord::Base
  include FixerExtend
  self.table_name= 'dgwordbooktype'
  has_many :dgwordbooks, :foreign_key=>"TypeID"
end
