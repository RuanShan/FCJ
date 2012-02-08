# encoding: utf-8
objs=[
  {"DisNO"=>"大东区", "ID"=>"FC01A8C0127CBA460127127CBA470000", "NO"=>"DL1", "Name"=>"大东区", "ProvinceCityID"=>nil, "WordNO"=>"东", "memo"=>"倒入"},
  {"DisNO"=>"新兴区", "ID"=>"FC01A8C0127CBA460127127CBA470001", "NO"=>"DL2", "Name"=>"新兴区", "ProvinceCityID"=>nil, "WordNO"=>"东", "memo"=>"倒入"},
  {"DisNO"=>"新城区", "ID"=>"FC01A8C0127CBA460127127CBA470002", "NO"=>"DL3", "Name"=>"新城区", "ProvinceCityID"=>nil, "WordNO"=>"东", "memo"=>"倒入"}]

District.delete_all              
for ha in objs
  ha[:id] = ha["ID"][-6,6].to_i(16)
  ha.delete("ID")
  obj = District.new
  obj.send(:attributes=, ha, false)
  obj.save
end
                
