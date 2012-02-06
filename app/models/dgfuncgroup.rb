class Dgfuncgroup < ActiveRecord::Base
  has_many :dgfunctions, :foreign_key=>"GroupID"
end
