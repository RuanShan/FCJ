class Dgwordbooktype < ActiveRecord::Base
  self.table_name= 'dgwordbooktype'
  has_many :dgwordbooks, :foreign_key=>"TypeID"
end
