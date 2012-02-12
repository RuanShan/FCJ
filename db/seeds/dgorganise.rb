# encoding: utf-8
objs=[
  {"id"=>"402881e427c646270127c64b3e690001", "Memo"=>nil, "NO"=>"Root", "Name"=>"Root", "dgorganiseID"=>nil, "PhoneNO"=>nil},
  {"id"=>"402881e727c650bc0127c65518ef0001", "Memo"=>"", "NO"=>"14", "Name"=>"东港房产管理处", "dgorganiseID"=>"402881e427c646270127c64b3e690001", "PhoneNO"=>""},
  {"id"=>"402880482c3ed0db012c3f8982f80002", "Memo"=>"", "NO"=>"001", "Name"=>"档案科", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""},
  {"id"=>"402881482c4e2f5e012c4e7a09ab000a", "Memo"=>"", "NO"=>"002", "Name"=>"私房科", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""},
  {"id"=>"402881482c525acc012c527c943f0015", "Memo"=>nil, "NO"=>"005", "Name"=>"财务科", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>nil},
  {"id"=>"402881482c525acc012c5273194e0007", "Memo"=>"", "NO"=>"007", "Name"=>"抵押测绘办", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""},
  {"id"=>"402880482b0a753a012b0de0c7170001", "Memo"=>"", "NO"=>"123", "Name"=>"软件测试小组", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>"123"},
  {"id"=>"402881482f84f6d9012f852905ab0002", "Memo"=>"", "NO"=>"484", "Name"=>"办公室", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""},
  {"id"=>"40288148320124e10132012b35b90001", "Memo"=>"", "NO"=>"485", "Name"=>"商品房管理科", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""},
  {"id"=>"40288148320124e1013201310c5a0004", "Memo"=>"", "NO"=>"486", "Name"=>"公房科", "dgorganiseID"=>"402881e727c650bc0127c65518ef0001", "PhoneNO"=>""}
  ]

Dgorganise.delete_all              
for ha in objs
  ha["id"]=ha["id"][-6,6].to_i(16)
  ha["dgorganiseID"]=ha["dgorganiseID"][-6,6].to_i(16) if ha["dgorganiseID"] and ha["dgorganiseID"][-6,6].to_i(16)
  obj = Dgorganise.new
  obj.send(:attributes=, ha, false)
  obj.save
end
                
