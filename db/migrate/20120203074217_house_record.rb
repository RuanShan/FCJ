class HouseRecord < ActiveRecord::Migration
  def self.up
    create_table "business", :primary_key => "ID", :force => true do |t|
      t.string   "NameID",          :limit => 200,                   :null => false
      t.string   "WorkID",          :limit => 200,                   :null => false
      t.string   "BizID",           :limit => 32,                    :null => false
      t.datetime "BOTime",                                           :null => false
      t.datetime "RegisterTime"
      t.string   "FinalWorker",     :limit => 32
      t.string   "EnrolWorker",     :limit => 32
      t.datetime "FinalTime"
      t.string   "Memo",            :limit => 200
      t.string   "ApprovalContext", :limit => 200
      t.integer  "BizSource",       :limit => 8
      t.string   "ProcessMessage",  :limit => 800
      t.datetime "AddBizTime"
      t.boolean  "Enable",                         :default => true, :null => false
      t.string   "SelectBiz",       :limit => 32
      t.string   "RecordBizNO",     :limit => 50
      t.string   "ProjectID",       :limit => 32
      t.string   "MappingCompany",  :limit => 32
      t.string   "EvaluateCompany", :limit => 32
    end
  
    add_index "business", ["NameID"], :name => "AK_KEY_2_BUSINESS", :unique => true
    add_index "business", ["SelectBiz"], :name => "FK_BUSINESS_REFERENCE_BUSINESS"
  
    create_table "closeopenhouse", :id => false, :force => true do |t|
      t.string   "ID",              :limit => 32,  :null => false
      t.string   "BizID",           :limit => 32
      t.string   "closeDown_clour", :limit => 100
      t.string   "close_file",      :limit => 100
      t.string   "close_cardId",    :limit => 100
      t.datetime "close_date"
      t.string   "open_file",       :limit => 100
      t.string   "open_cardId",     :limit => 100
      t.datetime "open_date"
      t.string   "selectBiz",       :limit => 32
      t.boolean  "isOpen"
      t.string   "keycode",         :limit => 12
    end
  
    create_table "directnesshouse", :id => false, :force => true do |t|
      t.string   "ID",         :limit => 32, :null => false
      t.string   "BizID",      :limit => 32, :null => false
      t.string   "CapturePeo", :limit => 32
      t.datetime "CTime"
      t.datetime "CTimeS"
      t.datetime "CTimeO"
      t.string   "HCPeo",      :limit => 32
      t.integer  "CMC"
      t.float    "MMeney"
      t.float    "AddUp"
    end
  
    create_table "doubtbiz", :id => false, :force => true do |t|
      t.string "ID",            :limit => 32,  :null => false
      t.string "BizID",         :limit => 32
      t.string "proposer",      :limit => 100
      t.string "doubt_matters", :limit => 200
      t.string "keycode",       :limit => 12
    end
  
    create_table "dtproperties", :id => false, :force => true do |t|
      t.integer "id",                                            :null => false
      t.integer "objectid"
      t.string  "property", :limit => 64,                        :null => false
      t.string  "value"
      t.string  "uvalue"
      t.binary  "lvalue",   :limit => 2147483647
      t.integer "version",                        :default => 0, :null => false
    end
  
    create_table "forecastregiste", :id => false, :force => true do |t|
      t.string "ID",           :limit => 32,  :null => false
      t.string "BizID",        :limit => 32
      t.string "owner",        :limit => 100
      t.string "ownerIdNo",    :limit => 30
      t.string "dutyPerson",   :limit => 100
      t.string "dutyIdNo",     :limit => 100
      t.string "forenoticeNo", :limit => 30
      t.string "keycode",      :limit => 12
    end
  
    create_table "houseandbusiness", :id => false, :force => true do |t|
      t.string "BizID",   :limit => 32, :null => false
      t.string "HouseID", :limit => 32, :null => false
    end
  
    create_table "househistroy", :primary_key => "ID", :force => true do |t|
      t.string   "NO",                    :limit => 50,                                                     :null => false
      t.string   "HouseNO",               :limit => 50
      t.string   "BuildID",               :limit => 32,                                                     :null => false
      t.decimal  "HouseArea",                            :precision => 18, :scale => 3,                     :null => false
      t.decimal  "TempArea",                             :precision => 18, :scale => 3
      t.decimal  "UseArea",                              :precision => 18, :scale => 3
      t.decimal  "CommArea",                             :precision => 18, :scale => 3
      t.decimal  "ShineArea",                            :precision => 18, :scale => 10
      t.decimal  "LoftArea",                             :precision => 18, :scale => 3
      t.decimal  "CommParam",                            :precision => 18, :scale => 3
      t.decimal  "PrivateArea",                          :precision => 18, :scale => 3
      t.decimal  "SellSumPrice",                         :precision => 18, :scale => 2
      t.decimal  "SumPrice",                             :precision => 18, :scale => 2
      t.decimal  "LoftPrice",                            :precision => 18, :scale => 2
      t.decimal  "SellPrice",                            :precision => 18, :scale => 2
      t.integer  "HouseState",            :limit => 8,                                                      :null => false
      t.integer  "HouseUnit",                                                                               :null => false
      t.string   "HouseOrder",            :limit => 20,                                                     :null => false
      t.integer  "InFloor"
      t.string   "InFloorName",           :limit => 50
      t.string   "DoorNo",                :limit => 20
      t.integer  "HouseType",             :limit => 8
      t.integer  "UseType",               :limit => 8
      t.integer  "HousePorperty",         :limit => 8
      t.integer  "Structure",             :limit => 8
      t.integer  "KnotSize",              :limit => 8
      t.integer  "HouseFrom",             :limit => 8
      t.datetime "SellDate"
      t.integer  "Html_Order",                                                                              :null => false
      t.integer  "Html_RowSpan",                                                         :default => 1
      t.integer  "Html_ColSpan",                                                         :default => 1
      t.integer  "Html_Page",                                                            :default => 1,     :null => false
      t.integer  "Html_HouseOrder"
      t.string   "KeyCode",               :limit => 13
      t.string   "CompactNO",             :limit => 50
      t.string   "HouseStation",          :limit => 100
      t.string   "LandInfo",              :limit => 32
      t.boolean  "InBiz",                                                                :default => false, :null => false
      t.string   "InBizCode",             :limit => 200
      t.string   "MainOwner",             :limit => 32
      t.string   "Memo",                  :limit => 200
      t.datetime "CreatDate"
      t.integer  "DataSource",            :limit => 8
      t.string   "UnitName",              :limit => 20
      t.integer  "Html_UnionColSpan",                                                    :default => 0,     :null => false
      t.integer  "Html_UnionColSpanLeft",                                                :default => 0,     :null => false
      t.integer  "PoolMemo",              :limit => 8
      t.decimal  "PrepareArea",                          :precision => 18, :scale => 3
      t.string   "EastTo",                :limit => 50
      t.string   "SouthTo",               :limit => 50
      t.string   "WestTo",                :limit => 50
      t.string   "NorthTo",               :limit => 50
      t.string   "EastNext",              :limit => 50
      t.string   "SouthNext",             :limit => 50
      t.string   "WestNext",              :limit => 50
      t.string   "NorthNext",             :limit => 50
      t.integer  "EastWall",              :limit => 8
      t.integer  "SouthWall",             :limit => 8
      t.integer  "WestWall",              :limit => 8
      t.integer  "NorthWall",             :limit => 8
      t.datetime "MappingDate"
      t.string   "MappingMemo",           :limit => 200
      t.integer  "Direction",             :limit => 8
      t.datetime "ChangeDate",                                                                              :null => false
      t.integer  "ChangeFrom",            :limit => 8
      t.string   "Business",              :limit => 32
      t.string   "Employee",              :limit => 32
      t.integer  "PayType",               :limit => 8
      t.datetime "RecordDate"
      t.datetime "SignDate"
    end
  
    create_table "housemodify", :primary_key => "ID", :force => true do |t|
      t.string   "BizID",             :limit => 32
      t.string   "MapNO",             :limit => 50
      t.string   "BlockNO",           :limit => 50
      t.string   "BuildNO",           :limit => 50
      t.string   "HouseOrder",        :limit => 50
      t.integer  "UseType",           :limit => 8
      t.integer  "Structure",         :limit => 8
      t.string   "HouseStation",      :limit => 100
      t.decimal  "HouseArea",                        :precision => 18, :scale => 3
      t.decimal  "CommArea",                         :precision => 18, :scale => 3
      t.decimal  "ParticularArea",                   :precision => 18, :scale => 3
      t.integer  "HouseFrom",         :limit => 8
      t.integer  "HouseProperty",     :limit => 8
      t.datetime "CreateDate"
      t.integer  "InFloor"
      t.string   "LandNO",            :limit => 50
      t.integer  "LandProperty",      :limit => 8
      t.integer  "LandGetMode",       :limit => 8
      t.datetime "LUTS"
      t.datetime "LUTO"
      t.decimal  "LandArea",                         :precision => 18, :scale => 3
      t.string   "LandCardNO",        :limit => 50
      t.string   "ModifyMemo",        :limit => 100
      t.string   "OldModifyMemo",     :limit => 100
      t.string   "MainOwner",         :limit => 50
      t.string   "PreMapNO",          :limit => 50
      t.string   "PreBlockNO",        :limit => 50
      t.string   "PreBuildNO",        :limit => 50
      t.string   "PreHouseOrder",     :limit => 50
      t.integer  "PreUseType",        :limit => 8
      t.integer  "PreStructure",      :limit => 8
      t.string   "PreHouseStation",   :limit => 100
      t.decimal  "PreHouseArea",                     :precision => 18, :scale => 3
      t.decimal  "PreCommArea",                      :precision => 18, :scale => 3
      t.decimal  "PreParticularArea",                :precision => 18, :scale => 3
      t.integer  "PreHouseFrom",      :limit => 8
      t.integer  "PreHouseProperty",  :limit => 8
      t.datetime "PreCreateDate"
      t.integer  "PreInFloor"
      t.string   "PreLandNO",         :limit => 50
      t.integer  "PreLandProperty",   :limit => 8
      t.integer  "PreLandGetMode",    :limit => 8
      t.datetime "PreLUTS"
      t.datetime "PreLUTO"
      t.decimal  "PreLandArea",                      :precision => 18, :scale => 3
      t.string   "PreLandCardNO",     :limit => 50
      t.string   "PreModifyMemo",     :limit => 100
      t.string   "PreOldModifyMemo",  :limit => 100
      t.string   "PreMainOwner",      :limit => 50
      t.integer  "PrePoolMemo",       :limit => 8
      t.integer  "PoolMemo",          :limit => 8
      t.string   "PreHouseCardNO",    :limit => 50
      t.string   "HouseCardNO",       :limit => 50
      t.string   "PrePoolCardNO",     :limit => 100
      t.string   "PoolCardNO",        :limit => 100
      t.string   "PreCompactNO",      :limit => 50
      t.string   "CompactNO",         :limit => 50
    end
  
    create_table "housemoney", :primary_key => "ID", :force => true do |t|
      t.string  "BizID",         :limit => 32
      t.string  "MoneyTypeID",   :limit => 20
      t.decimal "ShouldMoney",                  :precision => 18, :scale => 3
      t.decimal "FactMoney",                    :precision => 18, :scale => 3
      t.string  "ChargeDetails", :limit => 200
      t.string  "Memo",          :limit => 200
    end
  
    create_table "housemortagage", :id => false, :force => true do |t|
      t.string   "ID",               :limit => 32,  :null => false
      t.string   "BizID",            :limit => 32
      t.string   "mortDebter",       :limit => 100
      t.string   "mortPerson",       :limit => 100
      t.string   "maxWarrant",       :limit => 100
      t.string   "warrantScope",     :limit => 200
      t.datetime "debtExecuteTimeS"
      t.datetime "debtExecuteTimeO"
      t.string   "otherCardNo",      :limit => 20
      t.string   "maxDebtMakeSure",  :limit => 200
      t.string   "motorPerson",      :limit => 100
      t.string   "keycode",          :limit => 12
    end
  
    create_table "projectmortagage", :id => false, :force => true do |t|
      t.string   "ID",               :limit => 32,  :null => false
      t.string   "BizID",            :limit => 32
      t.string   "proDuty",          :limit => 100
      t.string   "proMotorPerson",   :limit => 100
      t.float    "proWarrant"
      t.string   "proWarrantsScope", :limit => 200
      t.datetime "proTimeLimiteS"
      t.datetime "proTimeLimiteO"
      t.string   "proMotorNo",       :limit => 30
      t.string   "keycode",          :limit => 12
    end
  
    create_table "record", :primary_key => "ID", :force => true do |t|
      t.string "NO",      :limit => 100, :null => false
      t.string "Frame",   :limit => 20
      t.string "Cab",     :limit => 20
      t.string "Volume",  :limit => 20
      t.string "HouseID", :limit => 32,  :null => false
    end
  
    add_index "record", ["NO"], :name => "AK_KEY_2_RECORD", :unique => true
  
    create_table "recordandbiz", :id => false, :force => true do |t|
      t.string "Record",   :limit => 32, :null => false
      t.string "Business", :limit => 32, :null => false
    end

  end

  def self.down
  end
end
