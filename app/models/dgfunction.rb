class Dgfunction < ActiveRecord::Base
  belongs_to :dgfuncgroup, :foreign_key=>"GroupID"
  has_and_belongs_to_many :dgroles, :join_table=>"dgrolefunctions", :foreign_key => "Fun_ID", :association_foreign_key => "Rol_ID"
end
