class Dgfunction < ActiveRecord::Base
  belongs_to :dgfuncgroup, :foreign_key=>"GroupID"
end
