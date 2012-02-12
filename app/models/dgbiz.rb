class Dgbiz < ActiveRecord::Base
  has_and_belongs_to_many :dgroles, :join_table=>"dgrolebizs", :foreign_key => "Biz_ID", :association_foreign_key => "Rol_ID"
end
