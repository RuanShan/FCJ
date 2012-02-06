class Setup < ActiveRecord::Migration
  def self.up
    #楼幢
    create_table "build", :primary_key => "ID", :force => true do |t|
      t.string   "NO",            :limit => 50,   :null => false       #楼幢编号         
      t.string   "BuildNO",       :limit => 50, :null => false         #幢号
      t.string   "BuildName",     :limit => 100,:null => false         #楼幢名称
      t.string   "ProjectID",     :limit => 32, :null => false         #项目索引
      t.string   "SectionID",     :limit => 32            #小区索引?
      t.string   "DoorNO",        :limit => 10            #门牌号
      t.integer  "UnintCount"   #单元数
      t.integer  "FloorCount"   #层数
      t.string   "BuildAddress",  :limit => 50            #坐落
      t.integer  "SumCount"     #总套数
      t.decimal  "Area",            :precision => 18, :scale => 3      #总面积？
      t.decimal  "SumArea",         :precision => 18, :scale => 3      #预售面积
      t.decimal  "HomeArea",        :precision => 18, :scale => 3,  :default => 0.0 #住宅面积
      t.decimal  "UNHomeArea",      :precision => 18, :scale => 3,  :default => 0.0 #非住宅面积
      t.decimal  "NetPointArea",    :precision => 18, :scale => 3,  :default => 0.0 #网点面积
      t.decimal  "DepotArea",       :precision => 18, :scale => 3,  :default => 0.0 #库房面积
      t.decimal  "OfficeArea",      :precision => 18, :scale => 3,  :default => 0.0 #办公面积
      t.decimal  "OtherArea",       :precision => 18, :scale => 3,  :default => 0.0 #其它面积
      t.integer  "HomeCount",:default => 0   #住宅套数
      t.integer  "UNHomeCount",           :default => 0   #非住宅套数
      t.integer  "NetPointCount",         :default => 0   #网点套数
      t.integer  "DepotCount",            :default => 0   #库房套数
      t.integer  "OfficeCount",           :default => 0   #办公套数
      t.integer  "OtherCount",            :default => 0   #其它套数
      t.string   "Memo",          :limit => 200           #备注
      t.decimal  "Lng",:precision => 18, :scale => 14     #长度?
      t.decimal  "Lat",:precision => 18, :scale => 14     #?
      t.integer  "Zoom"         #缩放？
      t.string   "MapNO",         :limit => 50, :null => false         #图号
      t.string   "BlockNO",       :limit => 50, :null => false         #丘号
      t.integer  "BuildType",     :limit => 8#建筑类型
      t.decimal  "CompositeArea",   :precision => 18, :scale => 0      #复合面积?
      t.boolean  "FirmlyPower",           :default => false, :null => false         #?
      t.datetime "FirmlyDate"   #确信日期?
      t.integer  "Structure",     :limit => 8#结构
      t.boolean  "isModify", :default => false            #?
    end
  
    add_index "build", ["NO"], :name => "AK_KEY_2_BUILD", :unique => true
    add_index "build", ["ProjectID"], :name => "FK_BUILD_REFERENCE_PROJECT"
    add_index "build", ["SectionID"], :name => "FK_BUILD_REFERENCE_SECTION"
  
    create_table "demployee", :primary_key => "ID", :force => true do |t|
      t.string   "NO",            :limit => 50,  :null => false
      t.string   "Developer",     :limit => 32,  :null => false        #开发商
      t.string   "Owner",         :limit => 32,  :null => false        #法人？
      t.string   "Password",      :limit => 100           #密码
      t.string   "LicenseNO",     :limit => 50            #证书编号?
      t.datetime "LicenseDateTo"#证书有效日期?
      t.string   "Phone",         :limit => 50            #电话
      t.integer  "Education",     :limit => 8#学历
      t.datetime "DateTo"       #？
      t.boolean  "isOff"        #是否注销?
      t.datetime "CreateDate"   #创建时间
      t.datetime "OffDate"      #注销日期?
      t.string   "GoodAction",    :limit => 100           #优良行为
      t.string   "NoGoodAction",  :limit => 100           #不良行为
      t.string   "Complaints",    :limit => 100           #举报投诉
      t.integer  "LicenseLeve",   :limit => 8#证书等级
      t.string   "Memo",          :limit => 200           #备注
    end

    add_index "demployee", ["Developer"], :name => "FK_DEMPLOYE_REFERENCE_DEVELOPE"
    add_index "demployee", ["NO"], :name => "AK_KEY_2_DEMPLOYE", :unique => true
    add_index "demployee", ["Owner"], :name => "FK_DEMPLOYE_REFERENCE_OWNERINF"
  
    create_table "developer", :primary_key => "ID", :force => true do |t|
      t.string   "NO", :limit => 50,       :null => false
      t.string   "Name",            :limit => 100,      :null => false #名称
      t.string   "OwnerName",       :limit => 20          #法人姓名
      t.string   "OwnerCard",       :limit => 50          #法人证件
      t.integer  "CompanyType",     :limit => 8           #公司类型？
      t.string   "Manager",         :limit => 20          #经理
      t.integer  "GroupLeve",       :limit => 8           #组等级？
      t.string   "E_Mail",          :limit => 50          #电子邮箱
      t.string   "PhoneNumber",     :limit => 200         #电话号码
      t.string   "Fax",:limit => 50          #传真
      t.string   "PostCode",        :limit => 50          #邮编
      t.string   "Address",         :limit => 100         #地址
      t.string   "CompanyCode",     :limit => 100         #？
      t.string   "LicenseNO",       :limit => 100         #证书编号？
      t.decimal  "RegMoney",          :precision => 18, :scale => 3    #注册资金？
      t.datetime "DateTo"       #？
      t.string   "Memo",            :limit => 200         #备注
      t.string   "OwnerID",         :limit => 32          #法人索引？证件？
      t.string   "Icon",            :limit => 100         #图标？
      t.string   "Password",        :limit => 50          #密码
      t.boolean  "IsOff"        #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",      :limit => 100         #优良行为
      t.string   "NoGoodAction",    :limit => 100         #不良行为
      t.string   "Complaints",      :limit => 100         #举报投诉
      t.string   "TaxLicenseNO",    :limit => 100         #税务登记证号
      t.string   "WebAddress",      :limit => 100         #网站
      t.integer  "ChildrenCount"#分支机构数量
      t.string   "ChildrenCompany", :limit => 200         #分支机构
      t.datetime "RecordDate"   #备案时间
    end
  
    add_index "developer", ["NO"], :name => "AK_KEY_2_DEVELOPE", :unique => true
    add_index "developer", ["OwnerID"], :name => "FK_DEVELOPE_REFERENCE_OWNERINF"
    #城区
    create_table "district", :primary_key => "id", :force => true do |t|
      t.string "NO",:limit => 50,  :null => false
      t.string "Name",           :limit => 100            #名称
      t.string "memo",           :limit => 200            #备注
      t.string "WordNO",         :limit => 50#房字号
      t.string "DisNO",          :limit => 50#区号？
      t.string "ProvinceCityID", :limit => 32#省会索引？
    end
  
    add_index "district", ["NO"], :name => "AK_KEY_2_DISTRICT", :unique => true
  
    create_table "dtproperties", :id => false, :force => true do |t|   #地区属性？
      t.integer "id",     :null => false
      t.integer "objectid"      #？
      t.string  "property", :limit => 64,           :null => false     #产权？
      t.string  "value"         #？
      t.string  "uvalue"        #？
      t.binary  "lvalue",   :limit => 2147483647          #？
      t.integer "version",           :default => 0, :null => false     #版本？
    end
  
    create_table "ecemployee", :primary_key => "ID", :force => true do |t|
      t.string   "NO", :limit => 50,  :null => false
      t.string   "Owner",           :limit => 32,  :null => false      #法人？
      t.string   "EvaluateCompany", :limit => 32,  :null => false      #评估机构？
      t.string   "Password",        :limit => 100         #密码
      t.string   "LicenseNO",       :limit => 50          #证书编号
      t.datetime "LicenseDateTo"#证书有效日期？
      t.string   "Phone",           :limit => 50          #电话
      t.integer  "Education",       :limit => 8           #学历
      t.datetime "DateTo"       #？
      t.boolean  "isOff"        #是否注销
      t.datetime "CreateDate"   #创建时间
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",      :limit => 100         #优良行为
      t.string   "NoGoodAction",    :limit => 100         #不良行为
      t.string   "Complaints",      :limit => 100         #举报投诉
      t.integer  "LicenseLeve",     :limit => 8           #证书等级
      t.string   "Memo",            :limit => 200         #备注
    end
  
    add_index "ecemployee", ["NO"], :name => "AK_KEY_2_ECEMPLOY", :unique => true
    add_index "ecemployee", ["Owner"], :name => "FK_ECEMPLOY_REFERENCE_OWNERINF"
  
    create_table "emptyhouse", :primary_key => "ID", :force => true do |t|
      t.string  "BuildID",          :limit => 32,   :null => false     #幢号
      t.integer "UseType"       #设计用途
      t.integer "HouseOrder",        :default => 1, :null => false     #房号
      t.integer "HouseUnit",         :default => 1, :null => false     #房屋单元数
      t.integer "InFloor",           :default => 1, :null => false     #所在层
      t.integer "RowSpan",           :default => 1, :null => false     #行跨度？
      t.integer "ColSpan",           :default => 1, :null => false     #列跨度？
      t.integer "UnionUnitColSpan",  :default => 0, :null => false     #整个单元列跨度？
      t.string  "InFloorName",      :limit => 50          #所在层名
      t.string  "HouseUnitName",    :limit => 20          #房屋单元名？
      t.integer "Page", :default => 1, :null => false     #页？
      t.integer "UnionColSpanLeft",  :default => 0, :null => false     #？
    end
  
    add_index "emptyhouse", ["BuildID"], :name => "FK_EMPTYHOU_REFERENCE_BUILD"
  
    create_table "evaluatecorporation", :primary_key => "ID", :force => true do |t|
      t.string   "NO", :limit => 50
      t.string   "Name",            :limit => 100         #机构名称
      t.string   "Owner",           :limit => 10          #法人？
      t.string   "Owner_card",      :limit => 25          #证件？
      t.string   "OwnerWay",        :limit => 20          #所属行业
      t.string   "Manager",         :limit => 10          #经理
      t.string   "Email",           :limit => 20          #电子邮箱
      t.string   "Phone",           :limit => 20          #电话
      t.string   "Fax",:limit => 15          #传真
      t.string   "Postalcode",      :limit => 10          #邮编
      t.string   "Address",         :limit => 100         #地址
      t.string   "CompanyNo",       :limit => 10          #机构代码证号？
      t.string   "Companylicense",  :limit => 20          #营业执照号？
      t.datetime "RecordDate"   #备案日期
      t.string   "Icon",            :limit => 100         #图标
      t.string   "Memo",            :limit => 200         #备注
      t.string   "Password",        :limit => 50          #密码
      t.boolean  "IsOff",     :default => false           #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",      :limit => 100         #优良行为
      t.string   "NoGoodAction",    :limit => 100         #不良行为
      t.string   "Complaints",      :limit => 100         #举报投诉
      t.string   "TaxLicenseNO",    :limit => 100         #税务登记证号
      t.integer  "CompanyType",     :limit => 8           #公司类型？
      t.decimal  "RegMoney",          :precision => 13, :scale => 3    #注册资金？
      t.integer  "GroupLeve",       :limit => 8           #组等级？
      t.string   "WebAddress",      :limit => 100         #网站
      t.datetime "DateTo"       #？
      t.integer  "ChildrenCount"#分支机构数量
      t.string   "ChildrenCompany", :limit => 200         #分支机构
    end
  
    add_index "evaluatecorporation", ["NO"], :name => "AK_KEY_2_EVALUATE", :unique => true
  
    create_table "financialinfo", :primary_key => "ID", :force => true do |t|
      t.string "No",          :limit => 30
      t.string "Name",        :limit => 50   #名称
      t.string "Phone",       :limit => 50   #电话
      t.string "LegalPeople", :limit => 50   #法人？
      t.string "Address",     :limit => 100  #地址
    end
  
    add_index "financialinfo", ["No"], :name => "AK_KEY_2_FINANCIA", :unique => true
  
    create_table "house", :primary_key => "ID", :force => true do |t|
      t.string   "NO",       :limit => 50, :null => false
      t.string   "HouseNO",  :limit => 50    #房屋编号
      t.string   "BuildID",  :limit => 32, :null => false #幢号
      t.decimal  "HouseArea",  :precision => 18, :scale => 3,        :null => false #建筑面积
      t.decimal  "TempArea",   :precision => 18, :scale => 3           #备案面积
      t.decimal  "UseArea",    :precision => 18, :scale => 3           #套内面积
      t.decimal  "CommArea",   :precision => 18, :scale => 3           #公共面积
      t.decimal  "ShineArea",  :precision => 18, :scale => 10          #阳台面积
      t.decimal  "LoftArea",   :precision => 18, :scale => 3           #阁楼面积
      t.decimal  "CommParam",  :precision => 18, :scale => 3           #分摊系数
      t.decimal  "PrivateArea",:precision => 18, :scale => 3           #私有面积
      t.decimal  "SellSumPrice",            :precision => 18, :scale => 3,  :default => 0.0      #销售总价
      t.decimal  "SumPrice",   :precision => 18, :scale => 3           #总价值
      t.decimal  "LoftPrice",  :precision => 18, :scale => 3           #阁楼价格
      t.decimal  "SellPrice",  :precision => 18, :scale => 3           #销售价格
      t.integer  "HouseState",            :limit => 8,  :null => false #房屋状态
      t.integer  "HouseUnit", :null => false #房屋单元数
      t.string   "HouseOrder",            :limit => 20, :null => false #房号
      t.integer  "InFloor"      #所在层
      t.string   "InFloorName",           :limit => 50    #所在层名称
      t.string   "DoorNo",   :limit => 20    #门牌号
      t.integer  "HouseType",:limit => 8     #房屋类型
      t.integer  "UseType",  :limit => 8     #设计用途
      t.integer  "HousePorperty",         :limit => 8     #产别
      t.integer  "Structure",:limit => 8     #结构
      t.integer  "KnotSize", :limit => 8     #套型
      t.integer  "HouseFrom",:limit => 8     #房屋来源
      t.datetime "SellDate"     #销售时间
      t.integer  "Html_Order",:null => false #?
      t.integer  "Html_RowSpan",     :default => 1        #?
      t.integer  "Html_ColSpan",     :default => 1        #?
      t.integer  "Html_Page",        :default => 1,     :null => false #?
      t.integer  "Html_HouseOrder"           #？
      t.string   "KeyCode",  :limit => 13    #旧号
      t.string   "CompactNO",:limit => 50    #合同编号
      t.string   "HouseStation",          :limit => 100   #房屋坐落
      t.string   "LandInfo", :limit => 32    #土地
      t.boolean  "InBiz",            :default => false, :null => false #业务进行中？
      t.string   "InBizCode",:limit => 200   #？
      t.string   "MainOwner",:limit => 32    #产权人信息
      t.string   "Memo",     :limit => 200   #备注
      t.datetime "CreatDate"    #建成年份
      t.integer  "DataSource",            :limit => 8     #数据来源
      t.string   "UnitName", :limit => 20    #单元名
      t.integer  "Html_UnionColSpan",:default => 0,     :null => false #？
      t.integer  "Html_UnionColSpanLeft",         :default => 0,     :null => false #？
      t.integer  "PoolMemo", :limit => 8     #共有情况
      t.decimal  "PrepareArea",:precision => 18, :scale => 3           #预测面积
      t.string   "EastTo",   :limit => 50    #东至
      t.string   "SouthTo",  :limit => 50    #南至
      t.string   "WestTo",   :limit => 50    #西至
      t.string   "NorthTo",  :limit => 50    #北至
      t.string   "EastNext", :limit => 50    #东临
      t.string   "SouthNext",:limit => 50    #南临
      t.string   "WestNext", :limit => 50    #西临
      t.string   "NorthNext",:limit => 50    #北临
      t.integer  "EastWall", :limit => 8     #东墙
      t.integer  "SouthWall",:limit => 8     #南墙
      t.integer  "WestWall", :limit => 8     #西墙
      t.integer  "NorthWall",:limit => 8     #北墙
      t.datetime "MappingDate"  #测绘时间
      t.string   "MappingMemo",           :limit => 200   #测绘备注
      t.integer  "Direction",:limit => 8     #朝向？
      t.integer  "PayType",  :limit => 8     #付款方式
      t.datetime "RecordDate"   #备案日期
      t.datetime "SignDate"     #签约时间
      t.boolean  "InitReg",          :default => false, :null => false #初始登记
      t.boolean  "FirmlyPower",      :default => false, :null => false #？
      t.boolean  "OutPlan",          :default => false, :null => false #？
      t.datetime "InitRegDate"  #初始登记时间
    end
  
    add_index "house", ["BuildID", "HouseOrder"], :name => "AK_KEY_3_HOUSE", :unique => true
    add_index "house", ["LandInfo"], :name => "FK_HOUSE_REFERENCE_LANDINFO"
    add_index "house", ["MainOwner"], :name => "FK_HOUSE_REFERENCE_OWNERINF"
    add_index "house", ["NO"], :name => "AK_KEY_2_HOUSE", :unique => true
  
    create_table "houseandcard", :id => false, :force => true do |t|
      t.string "HouseID", :limit => 32, :null => false    #房屋索引？
      t.string "CardID",  :limit => 32, :null => false    #房证索引
    end
  
    add_index "houseandcard", ["CardID"], :name => "FK_HOUSEAND_REFERENCE_HOUSECAR"
  
    create_table "houseandrecordowner", :id => false, :force => true do |t|
      t.string "HouseID", :limit => 32, :null => false    #房屋索引？
      t.string "OwnerID", :limit => 32, :null => false    #业主索引
    end
  
    add_index "houseandrecordowner", ["OwnerID"], :name => "FK_HOUSEAND_REFERENCE_OWNERINF"
  
    create_table "housecard", :primary_key => "ID", :force => true do |t|           #权证
      t.string   "BizID",      :limit => 32  #业务编号
      t.string   "NO",         :limit => 50  #？
      t.integer  "Type",       :limit => 8,        :null => false      #类型？
      t.datetime "PrintTime"    #填发时间
      t.boolean  "Cancel",            :null => false      #取消
      t.string   "Memo",       :limit => 200 #备注
      t.string   "ColPeo",     :limit => 20  #领证人
      t.string   "ColTel",     :limit => 30  #领证人电话
      t.datetime "ColTime"      #领证时间
      t.string   "OwnerID",    :limit => 32  #业主索引？
      t.string   "BusinessID", :limit => 32  #业务ID
      t.integer  "Relation",   :limit => 8   #与产权人关系
      t.decimal  "PoolArea",     :precision => 18, :scale => 3         #共有面积
      t.string   "Perc",       :limit => 50  #所占份额？
      t.string   "CardNO",     :limit => 50  #权证号
      t.string   "KEYCODE",    :limit => 12  #旧号
    end
  
    add_index "housecard", ["OwnerID"], :name => "FK_HOUSECAR_REFERENCE_OWNERINF"
  
    create_table "housecardnumber", :id => false, :force => true do |t|
      t.string  "id",   :limit => 32, :null => false      #？
      t.string  "NO",   :limit => 50, :null => false      #？
      t.integer "Type", :limit => 8,  :null => false      #类型？
    end
  
    create_table "housestate", :primary_key => "ID", :force => true do |t|
      t.string "HouseID",  :limit => 32, :null => false   #房屋索引？
      t.string "StateKey", :limit => 32, :null => false   #？
      t.string "FcBizId",  :limit => 12      #业务ID?
    end
  
    add_index "housestate", ["HouseID"], :name => "FK_HOUSESTA_REFERENCE_HOUSE"
  
    create_table "iemployee", :primary_key => "ID", :force => true do |t|
      t.string   "NO",            :limit => 50,  :null => false
      t.string   "Intermediary",  :limit => 32,  :null => false        #中介机构
      t.string   "Owner",         :limit => 32,  :null => false        #法人？
      t.string   "LicenseNO",     :limit => 50            #证书编号
      t.datetime "LicenseDateTo"#证书有效期至？
      t.string   "Phone",         :limit => 50            #电话
      t.integer  "Education",     :limit => 8#学历
      t.datetime "DateTo"       #？
      t.boolean  "isOff"        #是否注销
      t.string   "Password",      :limit => 50            #密码
      t.datetime "CreateDate"   #创建时间
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",    :limit => 100           #优良行为
      t.string   "NoGoodAction",  :limit => 100           #不良行为
      t.string   "Complaints",    :limit => 100           #举报投诉
      t.integer  "LicenseLeve",   :limit => 8#证书等级
      t.string   "Memo",          :limit => 200           #备注
    end
  
    add_index "iemployee", ["Intermediary"], :name => "FK_IEMPLOYE_REFERENCE_INTERMED"
    add_index "iemployee", ["NO"], :name => "AK_KEY_2_IEMPLOYE", :unique => true
    add_index "iemployee", ["Owner"], :name => "FK_IEMPLOYE_REFERENCE_OWNERINF"
  
    create_table "intermediary", :primary_key => "ID", :force => true do |t|
      t.string   "NO", :limit => 50
      t.string   "Name",            :limit => 50,       :null => false #名称
      t.datetime "RecordDate"   #备案日期
      t.string   "Address",         :limit => 100         #地址
      t.string   "PhoneNumber",     :limit => 200         #电话号码
      t.string   "OwnerName",       :limit => 20          #法人姓名？
      t.string   "OwnerCard",       :limit => 50          #法人证件？
      t.string   "Fax",:limit => 50          #传真
      t.string   "E_Mail",          :limit => 50          #电子邮箱
      t.string   "Icon",            :limit => 100         #图标
      t.string   "Memo",            :limit => 200         #备注
      t.string   "Password",        :limit => 50          #密码
      t.string   "PostCode",        :limit => 50          #邮编
      t.boolean  "IsOff"        #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",      :limit => 100         #优良行为
      t.string   "NoGoodAction",    :limit => 100         #不良行为
      t.string   "Complaints",      :limit => 100         #举报投诉
      t.string   "LicenseNO",       :limit => 100         #证书编号？
      t.string   "TaxLicenseNO",    :limit => 100         #税务代码证
      t.string   "CompanyCode",     :limit => 100         #？
      t.integer  "CompanyType",     :limit => 8           #机构类型？
      t.decimal  "RegMoney",          :precision => 13, :scale => 3    #注册资金？
      t.integer  "GroupLeve",       :limit => 8           #组等级？
      t.string   "WebAddress",      :limit => 100         #网站
      t.datetime "DateTo"       #？
      t.integer  "ChildrenCount"#分支机构数量
      t.string   "ChildrenCompany", :limit => 200         #分支机构
      t.string   "Manager",         :limit => 20          #经理
    end
  
    add_index "intermediary", ["NO"], :name => "AK_KEY_2_INTERMED", :unique => true
  
    create_table "landinfo", :primary_key => "ID", :force => true do |t|
      t.string   "NO",           :limit => 50,       :null => false
      t.integer  "LandProperty", :limit => 8 #土地性质
      t.datetime "LUTS"         #土地使用年限始
      t.datetime "LUTO"         #土地使用年限止
      t.decimal  "LandArea",       :precision => 18, :scale => 3       #土地面积
      t.string   "LandCardNO",   :limit => 50#土地证号
      t.string   "Memo",         :limit => 200            #备注
      t.integer  "LandGetMode",  :limit => 8 #土地取得方式
    end
  
    create_table "mappingcorporation", :primary_key => "ID", :force => true do |t|
      t.string   "NO", :limit => 50          #
      t.string   "Name",            :limit => 100         #名称
      t.string   "Owner",           :limit => 10          #法人？
      t.string   "Owner_card",      :limit => 25          #证件？
      t.string   "OwnerWay",        :limit => 20          #所属行业？
      t.string   "Manager",         :limit => 10          #经理
      t.string   "Email",           :limit => 20          #电子邮箱
      t.string   "Phone",           :limit => 20          #电话
      t.string   "Fax",:limit => 15          #传真
      t.string   "Postalcode",      :limit => 10          #邮编
      t.string   "Address",         :limit => 100         #地址
      t.string   "CompanyNo",       :limit => 10          #机构代码证号
      t.string   "Companylicense",  :limit => 20          #营业执照号
      t.string   "Memo",            :limit => 200         #备注
      t.datetime "RecordDate"   #备案日期
      t.string   "Icon",            :limit => 100         #图标
      t.string   "Password",        :limit => 50          #密码
      t.boolean  "IsOff",     :default => false           #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",      :limit => 100         #优良行为
      t.string   "NoGoodAction",    :limit => 100         #不良行为
      t.string   "Complaints",      :limit => 100         #举报投诉
      t.string   "TaxLicenseNO",    :limit => 100         #税务登记证号
      t.integer  "CompanyType",     :limit => 8           #机构类型？
      t.decimal  "RegMoney",          :precision => 13, :scale => 3    #注册资金？
      t.integer  "GroupLeve",       :limit => 8           #组等级？
      t.string   "WebAddress",      :limit => 100         #网站
      t.datetime "DateTo"       #？
      t.integer  "ChildrenCount"#分支机构数量
      t.string   "ChildrenCompany", :limit => 200         #分支机构
    end
  
    add_index "mappingcorporation", ["NO"], :name => "AK_KEY_2_MAPPINGC", :unique => true
  
    create_table "mcemployee", :primary_key => "ID", :force => true do |t|
      t.string   "Employee",      :limit => 32,  :null => false        #?
      t.string   "MapCompany",    :limit => 32,  :null => false        #测绘机构
      t.string   "NO",            :limit => 50,  :null => false        #?
      t.string   "LicenseNO",     :limit => 50            #证书编号
      t.datetime "LicenseDateTo"#证书有效期至?
      t.string   "Phone",         :limit => 50            #电话
      t.integer  "Education",     :limit => 8#学历
      t.datetime "DateTo"       #？
      t.boolean  "isOff"        #是否注销
      t.datetime "CreateDate"   #创建时间
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",    :limit => 100           #优良行为
      t.string   "NoGoodAction",  :limit => 100           #不良行为
      t.string   "Complaints",    :limit => 100           #举报投诉
      t.integer  "LicenseLeve",   :limit => 8#证书等级
      t.string   "Memo",          :limit => 200           #备注
    end
  
    add_index "mcemployee", ["NO"], :name => "AK_KEY_2_MCEMPLOY", :unique => true
  
    create_table "mcompany", :primary_key => "ID", :force => true do |t|            #物业公司
      t.string   "NO",           :limit => 50#编号
      t.string   "Name",         :limit => 50,       :null => false    #名称
      t.datetime "RecordDate"   #备案日期
      t.string   "Address",      :limit => 100            #地址
      t.string   "PhoneNumber",  :limit => 200            #电话号码
      t.string   "OwnerName",    :limit => 20#所有权人
      t.string   "OwnerCard",    :limit => 50#证件？
      t.string   "Fax",          :limit => 50#传真
      t.string   "E_Mail",       :limit => 50#电子邮箱
      t.string   "Icon",         :limit => 100            #图标
      t.string   "Memo",         :limit => 200            #备注
      t.string   "Password",     :limit => 50#密码
      t.string   "PostCode",     :limit => 50#邮编
      t.boolean  "IsOff"        #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "GoodAction",   :limit => 100            #优良行为
      t.string   "NoGoodAction", :limit => 100            #不良行为
      t.string   "Complaints",   :limit => 100            #举报投诉
      t.string   "LicenseNO",    :limit => 100            #证书编号
      t.string   "TaxLicenseNO", :limit => 100            #税务代码证
      t.string   "CompanyCode",  :limit => 100            #？
      t.integer  "CompanyType",  :limit => 8 #机构类型？
      t.decimal  "RegMoney",       :precision => 13, :scale => 3       #注册资金？
      t.integer  "GroupLeve",    :limit => 8 #组等级？
      t.string   "WebAddress",   :limit => 100            #网站
      t.datetime "DateTo"       #？
      t.string   "Manager",      :limit => 20#经理
    end
  
    add_index "mcompany", ["NO"], :name => "AK_KEY_2_MCOMPANY", :unique => true
  
    create_table "newhousecontract", :primary_key => "ID", :force => true do |t|
      t.string   "NO",  :limit => 50,         :null => false           #编号
      t.string   "DEmployee",        :limit => 32,         :null => false           #开发商从业人员
      t.string   "House",            :limit => 32,         :null => false           #房屋
      t.string   "Owner",            :limit => 32,         :null => false           #业主？
      t.string   "Password",         :limit => 50         #密码
      t.datetime "RecordDate"   #备案日期
      t.decimal  "TransactionPrice",   :precision => 18, :scale => 3,   :null => false           #成交价格
      t.integer  "State",            :limit => 8,        :default => 0, :null => false           #状态
      t.string   "Memo",:limit => 200        #备注
      t.integer  "PartCount",    :null => false           #合同份数
      t.integer  "PayType",          :limit => 8          #付款方式
    end
  
    add_index "newhousecontract", ["DEmployee"], :name => "FK_NEWHOUSE_REFERENCE_DEMPLOYE"
    add_index "newhousecontract", ["House"], :name => "FK_NEWHOUSE_REFERENCE_HOUSE"
    add_index "newhousecontract", ["NO"], :name => "AK_KEY_2_NEWHOUSE", :unique => true
    add_index "newhousecontract", ["Owner"], :name => "FK_NEWHOUSE_REFERENCE_OWNERINF"
  
    create_table "oldhousecontract", :primary_key => "ID", :force => true do |t|
      t.string   "NO",  :limit => 50,         :null => false           #编号
      t.string   "IEmployee",        :limit => 32,         :null => false           #中介人员
      t.datetime "RecordDate"   #备案日期
      t.string   "House",            :limit => 32,         :null => false           #房屋
      t.string   "Release",          :limit => 32,         :null => false           #？
      t.string   "Buyer",            :limit => 32,         :null => false           #买方
      t.string   "Seller",           :limit => 32,         :null => false           #卖方
      t.decimal  "TransactionPrice",   :precision => 18, :scale => 3   #成交价格
      t.integer  "State",            :limit => 8,        :default => 0, :null => false           #状态
      t.string   "Memo",:limit => 200        #备注
      t.string   "Password",         :limit => 50         #密码
      t.integer  "PartCount",    :null => false           #合同份数
      t.integer  "PayType",          :limit => 8          #付款方式
    end
  
    add_index "oldhousecontract", ["Buyer"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF2"
    add_index "oldhousecontract", ["House"], :name => "FK_OLDHOUSE_REFERENCE_HOUSE2"
    add_index "oldhousecontract", ["IEmployee"], :name => "FK_OLDHOUSE_REFERENCE_IEMPLOYE2"
    add_index "oldhousecontract", ["NO"], :name => "AK_KEY_2_OLDHOUSE2", :unique => true
    add_index "oldhousecontract", ["Release"], :name => "FK_OLDHOUSE_REFERENCE_OLDHOUSE2"
    add_index "oldhousecontract", ["Seller"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF3"
  
    create_table "oldhousecontractandowner", :id => false, :force => true do |t|
      t.string "Record", :limit => 32, :null => false     #备案？
      t.string "Owner",  :limit => 32, :null => false     #备案人？
    end
  
    add_index "oldhousecontractandowner", ["Owner"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF"
  
    create_table "oldhouserelease", :primary_key => "ID", :force => true do |t|     #旧房解除？
      t.string   "NO",  :limit => 50,         :null => false           #编号
      t.string   "House",            :limit => 32         #房屋
      t.string   "IEmployee",        :limit => 32         #中介人员
      t.decimal  "TransactionPrice",   :precision => 18, :scale => 3   #成交价格
      t.integer  "State",            :limit => 8,        :default => 0, :null => false           #状态
      t.datetime "RecordDate"   #备案日期
      t.datetime "DateTo",       :null => false           #？
      t.string   "CheckEmployee",    :limit => 32         #？
      t.string   "CheckView",        :limit => 200        #？
      t.string   "Memo",:limit => 200        #备注
      t.integer  "TaxPayType",       :limit => 8          #交税类型？
      t.integer  "Decoration",       :limit => 8          #装修？
      t.string   "SManagement",      :limit => 200        #？
      t.integer  "WXZJOper",         :limit => 8          #？
      t.string   "OtherHouse",       :limit => 200        #非住宅？
      t.string   "Equipment",        :limit => 200        #设备？
    end
  
    add_index "oldhouserelease", ["House"], :name => "FK_OLDHOUSE_REFERENCE_HOUSE"
    add_index "oldhouserelease", ["IEmployee"], :name => "FK_OLDHOUSE_REFERENCE_IEMPLOYE"
    add_index "oldhouserelease", ["NO"], :name => "AK_KEY_2_OLDHOUSE", :unique => true
  
    create_table "ownergroup", :primary_key => "ID", :force => true do |t|
      t.string   "NO",         :limit => 50,  :null => false           #编号
      t.string   "Name",       :limit => 50,  :null => false           #名称
      t.string   "Section",    :limit => 32,  :null => false           #小区
      t.string   "Owner",      :limit => 50  #法人？
      t.string   "Phone",      :limit => 50  #电话
      t.string   "Address",    :limit => 200 #地址
      t.datetime "CreateDate"   #创建时间
      t.integer  "TotalCount"   #总数量？
      t.string   "Memo",       :limit => 200 #备注
    end
  
    add_index "ownergroup", ["NO"], :name => "AK_KEY_2_OWNERGRO", :unique => true
    add_index "ownergroup", ["Section"], :name => "FK_OWNERGRO_REFERENCE_SECTION"
  
    create_table "ownerinfo", :primary_key => "ID", :force => true do |t|
      t.string   "NO",          :limit => 50,  :null => false          #编号
      t.integer  "Type",        :limit => 8  #类型
      t.string   "Name",        :limit => 100#名称
      t.integer  "IDType",      :limit => 8  #证件类型
      t.string   "IDNO",        :limit => 50 #证件号
      t.integer  "Sex"          #性别
      t.string   "Phone",       :limit => 50 #电话
      t.string   "City",        :limit => 50 #籍贯
      t.string   "Address",     :limit => 100#地址
      t.string   "Memo",        :limit => 100#备注
      t.string   "Nation",      :limit => 50 #民族
      t.datetime "Birthday"     #生日
      t.integer  "Domicile",    :limit => 8  #户籍所在地
      t.integer  "Nationality", :limit => 8  #国籍
    end
  
    add_index "ownerinfo", ["NO"], :name => "AK_KEY_2_OWNERINF", :unique => true
  
    create_table "poolbuild", :primary_key => "ID", :force => true do |t|
      t.string   "SectionID",    :limit => 32,  :null => false         #小区索引？
      t.string   "BuildName",    :limit => 50#楼幢名称
      t.integer  "Structure",    :limit => 8 #结构
      t.string   "Address",      :limit => 200            #地址
      t.string   "MapNumber",    :limit => 50#图？
      t.string   "BlockNO",      :limit => 50#丘号
      t.string   "BuildNO",      :limit => 50#幢号
      t.string   "HouseNO",      :limit => 50#房屋编号
      t.integer  "LayerNumber"  #层数
      t.float    "BuildArea"    #占地面积
      t.datetime "RegisterTime" #登记时间
      t.string   "Memo",         :limit => 200            #备注
    end
  
    add_index "poolbuild", ["SectionID"], :name => "FK_POOLBUIL_REFERENCE_SECTION"
  
    create_table "porjectcardandbuild", :id => false, :force => true do |t|
      t.string  "ProjectCard",   :limit => 32,      :null => false     #项目权证
      t.string  "Build",         :limit => 32,      :null => false     #楼幢
      t.decimal "SumArea",        :precision => 18, :scale => 3        #预售面积
      t.integer "SumCount"      #总套数
      t.decimal "HomeArea",       :precision => 18, :scale => 3        #住宅面积
      t.integer "HomeCount"     #住宅套数
      t.decimal "UnhomeArea",     :precision => 18, :scale => 3        #非住宅面积
      t.integer "UnhomeCount"   #非住宅套数
      t.decimal "NetPointArea",   :precision => 18, :scale => 3        #网点面积
      t.integer "NetPointCount" #网点套数
    end
  
    add_index "porjectcardandbuild", ["Build"], :name => "FK_PORJECTC_REFERENCE_BUILD"
  
    create_table "project", :primary_key => "ID", :force => true do |t|
      t.string   "NO",    :limit => 100,            :null => false     #编号
      t.string   "Name",  :limit => 50,:null => false     #名称
      t.string   "SectionID",          :limit => 32       #小区索引？
      t.string   "DeveloperID",        :limit => 32       #开发商索引
      t.string   "Address",            :limit => 200      #地址
      t.datetime "OpenDate"     #开盘时间
      t.datetime "CheckDate"    #审批时间
      t.string   "BuildSize",          :limit => 20       #建筑规模
      t.integer  "BuildCount"   #楼幢数
      t.decimal  "InvestMoney",          :precision => 18, :scale => 3 #总投资额
      t.datetime "FinishDate"   #结束时间
      t.decimal  "Area",    :precision => 18, :scale => 3 #总面积？
      t.decimal  "SumArea", :precision => 18, :scale => 3 #预售面积
      t.decimal  "HomeArea",:precision => 18, :scale => 3, :default => 0.0          #住宅面积
      t.decimal  "UNHomeArea",           :precision => 18, :scale => 3, :default => 0.0          #非住宅面积
      t.decimal  "NetPointArea",         :precision => 18, :scale => 3, :default => 0.0          #网点面积
      t.decimal  "OfficeArea",           :precision => 18, :scale => 3, :default => 0.0          #办公面积
      t.decimal  "DepotArea",            :precision => 18, :scale => 3, :default => 0.0          #库房面积
      t.decimal  "CommonArea",           :precision => 18, :scale => 3, :default => 0.0          #共建面积
      t.decimal  "OtherArea",            :precision => 18, :scale => 3, :default => 0.0          #其它面积
      t.integer  "SellCount",    :default => 0            #预售总套数
      t.integer  "HomeCount",    :default => 0            #住宅套数
      t.integer  "UNHomeCount",  :default => 0            #非住宅套数
      t.integer  "NetPointCount",:default => 0            #网点套数
      t.integer  "OfficeCount",  :default => 0            #办公套数
      t.integer  "DepotCount",   :default => 0            #库房套数
      t.integer  "CommonCount",  :default => 0            #共建套数
      t.integer  "OtherCount",   :default => 0            #其它套数
      t.decimal  "HouseBeginPrice",      :precision => 18, :scale => 3 #住宅起价
      t.decimal  "HouseAvePrice",        :precision => 18, :scale => 3 #住宅均价
      t.decimal  "OtherBeginPrice",      :precision => 18, :scale => 3 #非住宅起价
      t.decimal  "OtherHouseAvePrice",   :precision => 18, :scale => 3 #非住宅均价
      t.decimal  "NetPointBeginPrice",   :precision => 18, :scale => 3 #网点起价
      t.decimal  "NetPointAvePrice",     :precision => 18, :scale => 3 #网点均价
      t.decimal  "OfficeBeginPrice",     :precision => 18, :scale => 3 #办公起价
      t.decimal  "OfficeAvePrice",       :precision => 18, :scale => 3 #办公均价
      t.decimal  "DepotBeginPrice",      :precision => 18, :scale => 3 #库房起价
      t.decimal  "DepotAvePrice",        :precision => 18, :scale => 3 #库房均价
      t.decimal  "OtherPrice",           :precision => 18, :scale => 3 #其他价格
      t.string   "Phone", :limit => 20       #电话
      t.string   "USLLicence",         :limit => 100      #建设用地规划许可证
      t.string   "BCLicence",          :limit => 100      #建设施工许可证
      t.string   "PClicence",          :limit => 100      #工程规划许可证
      t.string   "JWLicence",          :limit => 100      #计委批文
      t.string   "YYLicence",          :limit => 100      #营业执照
      t.datetime "ComeDate"     #入住日期
      t.integer  "State", :limit => 8, :null => false     #状态
      t.boolean  "InBiz",        :default => false, :null => false     #业务进行中？
      t.string   "InBizCode",          :limit => 200      #？
      t.string   "Memo",  :limit => 200      #备注
      t.datetime "LUTS"         #土地使用年限始
      t.datetime "LUTO"         #土地使用年限止
      t.integer  "LandGetMode",        :limit => 8        #土地取得方式
      t.integer  "DataSource",         :limit => 8        #数据来源
      t.datetime "MappingDate"  #测绘时间
      t.string   "MappingMemo",        :limit => 200      #测绘备注
      t.string   "LandCardNO",         :limit => 50       #土地证号
      t.decimal  "LandArea",:precision => 18, :scale => 3 #土地面积
      t.integer  "LandProperty",       :limit => 8        #土地性质
      t.decimal  "LandMoney",            :precision => 18, :scale => 3 #？
      t.datetime "CreateDate"   #创建时间
      t.string   "BCardNO",            :limit => 50       #债务人证件号码 ？
      t.datetime "BCardDate"    #？
      t.integer  "BCardCount"   #？
      t.datetime "BCardCDate"   #？
      t.boolean  "Seal",         :default => false, :null => false     #？
      t.decimal  "PlanArea",:precision => 18, :scale => 0 #？
      t.decimal  "GarageArea",           :precision => 18, :scale => 0 #车库面积
      t.integer  "GarageCount"  #车库套数
      t.integer  "IsCard",       :default => 0            #？
    end
  
    add_index "project", ["DeveloperID"], :name => "FK_PROJECT_REFERENCE_DEVELOPE"
    add_index "project", ["NO"], :name => "AK_KEY_2_PROJECT", :unique => true
    add_index "project", ["SectionID"], :name => "FK_PROJECT_REFERENCE_SECTION"
  
    create_table "projectandcard", :id => false, :force => true do |t|
      t.string "Card",    :limit => 32, :null => false    #权证？
      t.string "Project", :limit => 32, :null => false    #项目
    end
  
    add_index "projectandcard", ["Project"], :name => "FK_PROJECTA_REFERENCE_PROJECT"
  
    create_table "projectcard", :primary_key => "ID", :force => true do |t|          #项目权证
      t.string   "NO",            :limit => 50,:null => false           #编号
      t.integer  "Type",          :limit => 8, :null => false           #类型
      t.string   "BizID",         :limit => 32#业务编号
      t.datetime "PrintTime"     #填发时间
      t.boolean  "Cancel",        :null => false           #取消
      t.string   "Memo",          :limit => 200            #备注
      t.string   "ColPeo",        :limit => 10#领证人
      t.string   "ColTel",        :limit => 30#领证人电话
      t.datetime "ColTime"       #领证时间
      t.string   "BusinessID",    :limit => 32#业务ID
      t.integer  "HouseCount"    #房屋数
      t.integer  "BuildCount"    #栋数
      t.decimal  "SumArea",         :precision => 18, :scale => 3       #预售面积
      t.boolean  "IsPrepareSell",        :default => false #是否预售？
      t.string   "UseType",       :limit => 50#设计用途
      t.string   "SellObject",    :limit => 50#？
      t.string   "YearNum",       :limit => 50#？
      t.string   "OrderNum",      :limit => 50#？
      t.string   "CardNO",        :limit => 50#权证号
      t.string   "KEYCODE",       :limit => 12#旧号
    end
  
    create_table "projectcreateprocess", :primary_key => "ID", :force => true do |t|
      t.string   "project",     :limit => 32 #项目
      t.datetime "processDate"  #处理日期？
      t.decimal  "money",         :precision => 18, :scale => 3        #金额
      t.decimal  "houseMoney",    :precision => 18, :scale => 3        #房款
      t.string   "memo",        :limit => 200#备注
    end
  
    add_index "projectcreateprocess", ["project"], :name => "FK_PROJECTC_REFERENCE_PROJECT"
  
    create_table "provincecity", :primary_key => "ID", :force => true do |t|
      t.string "NO",           :limit => 50  #编号
      t.string "ProvinceName", :limit => 100 #省名称
      t.string "CityName",     :limit => 100 #市名
      t.string "Memo",         :limit => 200 #备注
    end
  
    create_table "section", :primary_key => "ID", :force => true do |t|
      t.string   "NO",         :limit => 20,  :null => false           #编号
      t.string   "DistrictID", :limit => 32  #城区索引
      t.string   "Name",       :limit => 50,  :null => false           #名称
      t.datetime "CreateDate"   #创建时间
      t.string   "Address",    :limit => 200 #地址
      t.string   "Memo",       :limit => 200 #备注
    end

    add_index "section", ["DistrictID"], :name => "FK_SECTION_REFERENCE_DISTRICT"
    add_index "section", ["NO"], :name => "AK_KEY_2_SECTION", :unique => true
  
    create_table "smsubcompany", :primary_key => "ID", :force => true do |t|
      t.string   "MCompany", :limit => 32    #物业公司
      t.string   "Section",  :limit => 32,  :null => false#小区
      t.string   "Name",     :limit => 50    #名称
      t.string   "Address",  :limit => 100   #地址
      t.string   "Owner",    :limit => 50    #法人？
      t.string   "Phone",    :limit => 50    #电话
      t.datetime "RegDate"      #登记时间
      t.boolean  "IsOff"        #是否注销
      t.datetime "OffDate"      #注销日期
      t.string   "Memo",     :limit => 200   #备注
    end
  
    add_index "smsubcompany", ["MCompany"], :name => "FK_SMSUBCOM_REFERENCE_MCOMPANY"
    add_index "smsubcompany", ["Section"], :name => "FK_SMSUBCOM_REFERENCE_SECTION"

  end

  def self.down
    #houseinfo
    drop_table :build    #搂幢
    drop_table :demployee #房地产从业人员
    drop_table :developer #开发商
    drop_table :district  #城区
    drop_table :dtproperties#
    drop_table :ecemployee          #评估人员
    drop_table :emptyhouse          
    drop_table :evaluatecorporation #评估机构
    drop_table :financialinfo       #金融机构
    drop_table :house  #房屋
    drop_table :houseandcard        #房屋和房证关系
    drop_table :houseandrecordowner
    drop_table :housecard           #房证
    drop_table :housecardnumber     #
    drop_table :housestate          #房屋状态
    drop_table :iemployee           #中介从业人员
    drop_table :intermediary        #中介机构
    drop_table :landinfo            #土地信息
    drop_table :mappingcorporation  #测绘机构
    drop_table :mcemployee          #测绘人员
    drop_table :mcompany            #物业公司
    drop_table :newhousecontract    #新房屋买卖合同
    drop_table :oldhousecontract    #原房屋买卖合同
    drop_table :oldhousecontractandowner
    drop_table :oldhouserelease
    drop_table :ownergroup          #业主
    drop_table :ownerinfo           #业主
    drop_table :poolbuild           #共有建筑
    drop_table :porjectcardandbuild
    drop_table :project
    drop_table :projectcard
    drop_table :projectcreateprocess
    drop_table :provincecity        #省市
    drop_table :section#小区
    drop_table :smsubcompany        #
    
    #houserecord
  end
end
