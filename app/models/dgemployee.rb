class Dgemployee < ActiveRecord::Base
  include FixerExtend
  belongs_to :dgorganise, :foreign_key => "Org_ID"
  has_and_belongs_to_many :dgroles
  self.list_cols=[:NO,:Name,:IDNO,:job,:IsUse]
  self.new_cols=[:IsUse,:NO,:Name,:job,:Sex,:IDNO,:PhoneNO,:BirthDate,:JoinDate,:Password,:E_Mail,:HomeAddress,:Memo]
end