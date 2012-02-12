class Dgflow < ActiveRecord::Base
  has_and_belongs_to_many :dgroles, :join_table=>"dgroleflows", :foreign_key => "Flo_ID", :association_foreign_key => "Rol_ID"

end
