class Dgrole < ActiveRecord::Base
  include FixerExtend

  has_and_belongs_to_many :dgemployees, :join_table=>"dgemployeeroles", :foreign_key => "Rol_ID",:association_foreign_key=> "Emp_ID"
  has_and_belongs_to_many :dgfunctions, :join_table=>"dgrolefunctions", :foreign_key => "Rol_ID",:association_foreign_key=> "Fun_ID"
  has_and_belongs_to_many :dgbizs, :join_table=>"dgrolebizs", :foreign_key => "Rol_ID",:association_foreign_key=> "Biz_ID"
  has_and_belongs_to_many :dgflows, :join_table=>"dgroleflows", :foreign_key => "Rol_ID",:association_foreign_key=> "Flo_ID"

  self.manager_class = "dgrole"
  self.new_cols=[:NO,:Name]
end
