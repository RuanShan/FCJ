class Project < ActiveRecord::Base
  self.table_name="project"
  include FixerExtend
  self.list_cols=["NO","Name","WordNO"]
  self.new_cols=[:NO,:Name, :SectionID, :DeveloperID, :Address, :OpenDate, :CheckDate, :BuildSize, :BuildCount, :InvestMoney, :FinishDate, :Area, :SumArea, :HomeArea, :UNHomeArea, :NetPointArea, :OfficeArea, :DepotArea, :CommonArea, :OtherArea, :SellCount, :HomeCount, :UNHomeCount, :NetPointCount, :OfficeCount, :DepotCount, :CommonCount, :OtherCount, :HouseBeginPrice, :HouseAvePrice, :OtherBeginPrice, :OtherHouseAvePrice, :NetPointBeginPrice, :NetPointAvePrice, :OfficeBeginPrice, :OfficeAvePrice, :DepotBeginPrice, :DepotAvePrice, :OtherPrice, :Phone, :USLLicence, :BCLicence, :PClicence, :JWLicence, :YYLicence, :ComeDate, :State, :InBiz, :Memo, :LUTS, :LUTO, :LandGetMode, :DataSource, :MappingDate, :MappingMemo, :LandCardNO, :LandArea, :LandProperty, :CreateDate, :BCardNO, :GarageArea, :GarageCount]
  self.edit_cols=["NO","Name","WordNO"]
end
