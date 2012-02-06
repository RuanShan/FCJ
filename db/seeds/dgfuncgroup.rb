# encoding: utf-8
objs=[
  {"GroupName"=>"业务办理", "id"=>"1", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>1},
  {"GroupName"=>"业务办理", "id"=>"10", "Icon"=>nil, "InSystem"=>0, "Memo"=>"", "Priority"=>10},
  {"GroupName"=>"基本信息管理", "id"=>"11", "Icon"=>"BaseInfo.bmp", "InSystem"=>1, "Memo"=>"", "Priority"=>11},
  {"GroupName"=>"兼容功能", "id"=>"12", "Icon"=>"BaseInfo.bmp", "InSystem"=>1, "Memo"=>"", "Priority"=>12},
  {"GroupName"=>"系统设置", "id"=>"2", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>2},
  {"GroupName"=>"系统管理", "id"=>"3", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>5},
  {"GroupName"=>"信息维护", "id"=>"4", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>4},
  {"GroupName"=>"统计分析", "id"=>"14", "Icon"=>"", "InSystem"=>0, "Memo"=>"", "Priority"=>10},
  {"GroupName"=>"维修资金", "id"=>"13", "Icon"=>"", "InSystem"=>0, "Memo"=>"", "Priority"=>11},
  {"GroupName"=>"查询报表", "id"=>"5", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>6},
  {"GroupName"=>"数据清除", "id"=>"8", "Icon"=>nil, "InSystem"=>0, "Memo"=>nil, "Priority"=>3}]

Dgfuncgroup.delete_all              
for ha in objs
  obj = Dgfuncgroup.new
  obj.send(:attributes=, ha, false)
  obj.save
end
                
