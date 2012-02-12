class Dgemployee < ActiveRecord::Base
  include FixerExtend

  belongs_to :dgorganise, :foreign_key => "dgorganiseID"
  has_and_belongs_to_many :dgroles, :join_table=>"dgemployeeroles", :foreign_key => "Emp_ID", :association_foreign_key => "Rol_ID"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me

  self.manager_class = "dgorganise"

  self.list_cols=[:NO,:Name,:IDNO,:job,:IsUse]
  self.new_cols=[:dgorganiseID,:IsUse,:NO,:Name,:job,:Sex,:IDNO,:PhoneNO,:BirthDate,:JoinDate,:Password,:E_Mail,:HomeAddress,:Memo]
end