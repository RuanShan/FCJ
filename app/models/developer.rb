class Developer < Company
  self.list_cols=[:NO,:Name,:OwnerName,:PhoneNumber,:Address]
  self.new_cols=[:NO,:Name,:E_Mail,:RegMoney, :OwnerName,:OwnerCard,
       :Manager,:PhoneNumber,:Fax,:PostCode,:CompanyCode,:LicenseNO,:WebAddress,
       :ChildrenCompany,:ChildrenCount,:GoodAction,:NoGoodAction,:Complaints,:TaxLicenseNO,
       :D_GroupLeve,[:IsOff],:RecordDate,:OffDate,:DateTo,[:Address],[:Memo]]
end
