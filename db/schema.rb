# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120204132853) do

  create_table "build", :force => true do |t|
    t.string   "NO",            :limit => 50,                                                     :null => false
    t.string   "BuildNO",       :limit => 50,                                                     :null => false
    t.string   "BuildName",     :limit => 100,                                                    :null => false
    t.string   "ProjectID",     :limit => 32,                                                     :null => false
    t.string   "SectionID",     :limit => 32
    t.string   "DoorNO",        :limit => 10
    t.integer  "UnintCount"
    t.integer  "FloorCount"
    t.string   "BuildAddress",  :limit => 50
    t.integer  "SumCount"
    t.decimal  "Area",                         :precision => 18, :scale => 3
    t.decimal  "SumArea",                      :precision => 18, :scale => 3
    t.decimal  "HomeArea",                     :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "UNHomeArea",                   :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "NetPointArea",                 :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "DepotArea",                    :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "OfficeArea",                   :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "OtherArea",                    :precision => 18, :scale => 3,  :default => 0.0
    t.integer  "HomeCount",                                                    :default => 0
    t.integer  "UNHomeCount",                                                  :default => 0
    t.integer  "NetPointCount",                                                :default => 0
    t.integer  "DepotCount",                                                   :default => 0
    t.integer  "OfficeCount",                                                  :default => 0
    t.integer  "OtherCount",                                                   :default => 0
    t.string   "Memo",          :limit => 200
    t.decimal  "Lng",                          :precision => 18, :scale => 14
    t.decimal  "Lat",                          :precision => 18, :scale => 14
    t.integer  "Zoom"
    t.string   "MapNO",         :limit => 50,                                                     :null => false
    t.string   "BlockNO",       :limit => 50,                                                     :null => false
    t.integer  "BuildType",     :limit => 8
    t.decimal  "CompositeArea",                :precision => 18, :scale => 0
    t.boolean  "FirmlyPower",                                                  :default => false, :null => false
    t.datetime "FirmlyDate"
    t.integer  "Structure",     :limit => 8
    t.boolean  "isModify",                                                     :default => false
  end

  add_index "build", ["NO"], :name => "AK_KEY_2_BUILD", :unique => true
  add_index "build", ["ProjectID"], :name => "FK_BUILD_REFERENCE_PROJECT"
  add_index "build", ["SectionID"], :name => "FK_BUILD_REFERENCE_SECTION"

  create_table "business", :primary_key => "ID", :force => true do |t|
    t.string   "NameID",          :limit => 200,                   :null => false
    t.string   "WorkID",          :limit => 200,                   :null => false
    t.string   "BizID",           :limit => 32,                    :null => false
    t.datetime "BOTime",                                           :null => false
    t.datetime "RegisterTime"
    t.string   "FinalWorker",     :limit => 32
    t.string   "EnrolWorker",     :limit => 32
    t.datetime "FinalTime"
    t.string   "Memo",            :limit => 256
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

  create_table "companies", :force => true do |t|
    t.string   "NO",              :limit => 50,                                 :null => false
    t.string   "Name",            :limit => 100,                                :null => false
    t.string   "OwnerName",       :limit => 20
    t.string   "OwnerCard",       :limit => 50
    t.string   "type",            :limit => 20
    t.string   "Manager",         :limit => 20
    t.integer  "D_GroupLeve",     :limit => 8
    t.integer  "D_CompanyType",   :limit => 8
    t.string   "E_Mail",          :limit => 50
    t.string   "PhoneNumber",     :limit => 200
    t.string   "Fax",             :limit => 50
    t.string   "PostCode",        :limit => 50
    t.string   "Address",         :limit => 100
    t.string   "CompanyCode",     :limit => 100
    t.string   "LicenseNO",       :limit => 100
    t.decimal  "RegMoney",                       :precision => 18, :scale => 3
    t.datetime "DateTo"
    t.string   "Memo",            :limit => 256
    t.string   "OwnerID",         :limit => 32
    t.string   "Icon",            :limit => 100
    t.string   "Password",        :limit => 50
    t.boolean  "IsOff"
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.string   "TaxLicenseNO",    :limit => 100
    t.string   "WebAddress",      :limit => 100
    t.integer  "ChildrenCount"
    t.string   "ChildrenCompany", :limit => 200
    t.datetime "RecordDate"
  end

  create_table "demployee", :primary_key => "ID", :force => true do |t|
    t.string   "NO",            :limit => 50,  :null => false
    t.string   "Developer",     :limit => 32,  :null => false
    t.string   "Owner",         :limit => 32,  :null => false
    t.string   "Password",      :limit => 100
    t.string   "LicenseNO",     :limit => 50
    t.datetime "LicenseDateTo"
    t.string   "Phone",         :limit => 50
    t.integer  "Education",     :limit => 8
    t.datetime "DateTo"
    t.boolean  "isOff"
    t.datetime "CreateDate"
    t.datetime "OffDate"
    t.string   "GoodAction",    :limit => 100
    t.string   "NoGoodAction",  :limit => 100
    t.string   "Complaints",    :limit => 100
    t.integer  "LicenseLeve",   :limit => 8
    t.string   "Memo",          :limit => 200
  end

  add_index "demployee", ["Developer"], :name => "FK_DEMPLOYE_REFERENCE_DEVELOPE"
  add_index "demployee", ["NO"], :name => "AK_KEY_2_DEMPLOYE", :unique => true
  add_index "demployee", ["Owner"], :name => "FK_DEMPLOYE_REFERENCE_OWNERINF"

  create_table "developer", :force => true do |t|
    t.string   "NO",              :limit => 50,                                 :null => false
    t.string   "Name",            :limit => 100,                                :null => false
    t.string   "OwnerName",       :limit => 20
    t.string   "OwnerCard",       :limit => 50
    t.integer  "CompanyType",     :limit => 8
    t.string   "Manager",         :limit => 20
    t.integer  "GroupLeve",       :limit => 8
    t.string   "E_Mail",          :limit => 50
    t.string   "PhoneNumber",     :limit => 200
    t.string   "Fax",             :limit => 50
    t.string   "PostCode",        :limit => 50
    t.string   "Address",         :limit => 100
    t.string   "CompanyCode",     :limit => 100
    t.string   "LicenseNO",       :limit => 100
    t.decimal  "RegMoney",                       :precision => 18, :scale => 3
    t.datetime "DateTo"
    t.string   "Memo",            :limit => 256
    t.string   "OwnerID",         :limit => 32
    t.string   "Icon",            :limit => 100
    t.string   "Password",        :limit => 50
    t.boolean  "IsOff"
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.string   "TaxLicenseNO",    :limit => 100
    t.string   "WebAddress",      :limit => 100
    t.integer  "ChildrenCount"
    t.string   "ChildrenCompany", :limit => 200
    t.datetime "RecordDate"
  end

  add_index "developer", ["NO"], :name => "AK_KEY_2_DEVELOPE", :unique => true
  add_index "developer", ["OwnerID"], :name => "FK_DEVELOPE_REFERENCE_OWNERINF"

  create_table "dgbiz", :primary_key => "ID", :force => true do |t|
    t.string  "Code",         :limit => 200, :null => false
    t.integer "StartVarType", :limit => 8
    t.string  "StartVarName", :limit => 50
    t.string  "Memo",         :limit => 200
    t.string  "OperPage",     :limit => 200
    t.string  "StartService", :limit => 100
    t.string  "PackageName",  :limit => 50
  end

  add_index "dgbiz", ["Code"], :name => "AK_KEY_2_DGBIZ", :unique => true
  add_index "dgbiz", ["StartVarType"], :name => "FK_DGBIZ_REFERENCE_DGWORDBO"

  create_table "dgbizandrateitems", :id => false, :force => true do |t|
    t.string  "Biz",       :limit => 32, :null => false
    t.integer "RateItems", :limit => 8,  :null => false
  end

  add_index "dgbizandrateitems", ["RateItems"], :name => "FK_DGBIZAND_REFERENCE_DGRATEIT"

  create_table "dgbizdoc", :primary_key => "ID", :force => true do |t|
    t.string  "BizID",       :limit => 200, :null => false
    t.string  "ActiveID",    :limit => 200
    t.string  "DocType",     :limit => 100, :null => false
    t.boolean "IsImportant",                :null => false
    t.boolean "IsUpload"
  end

  create_table "dgbizfile", :primary_key => "ID", :force => true do |t|
    t.string   "FileName",    :limit => 200
    t.integer  "FileType"
    t.datetime "UpdateDate"
    t.string   "MD5Code",     :limit => 500
    t.integer  "FileFrom"
    t.string   "EmployeeID",  :limit => 32
    t.string   "DocID",       :limit => 32
    t.string   "SrcFileName", :limit => 100
  end

  add_index "dgbizfile", ["DocID"], :name => "FK_DGBIZFIL_REFERENCE_DGBIZDOC"
  add_index "dgbizfile", ["EmployeeID"], :name => "FK_DGBIZFIL_REFERENCE_DGEMPLOY"

  create_table "dgemployee", :primary_key => "ID", :force => true do |t|
    t.string   "Org_ID",      :limit => 32
    t.string   "NO",          :limit => 50,                    :null => false
    t.string   "Name",        :limit => 20,                    :null => false
    t.integer  "Sex"
    t.string   "IDNO",        :limit => 100
    t.datetime "JoinDate"
    t.datetime "BirthDate"
    t.string   "PhoneNO",     :limit => 20
    t.string   "HomeAddress", :limit => 20
    t.string   "E_Mail",      :limit => 20
    t.string   "Password",    :limit => 100
    t.string   "Memo",        :limit => 100
    t.boolean  "IsUse",                      :default => true, :null => false
    t.integer  "job",         :limit => 8
  end

  add_index "dgemployee", ["NO"], :name => "AK_KEY_2_DGEMPLOY", :unique => true
  add_index "dgemployee", ["Org_ID"], :name => "Relationship_6_FK"
  add_index "dgemployee", ["job"], :name => "FK_DGEMPLOY_REFERENCE_DGWORDBO"

  create_table "dgemployeerole", :id => false, :force => true do |t|
    t.string "Rol_ID", :limit => 32, :null => false
    t.string "Emp_ID", :limit => 32, :null => false
  end

  add_index "dgemployeerole", ["Emp_ID"], :name => "Relationship_1_FK"
  add_index "dgemployeerole", ["Rol_ID"], :name => "Relationship_2_FK"

  create_table "dgflow", :force => true do |t|
    t.string  "Name",     :limit => 20, :null => false
    t.integer "position"
  end

  create_table "dgfuncgroups", :force => true do |t|
    t.string  "GroupName", :limit => 40,                 :null => false
    t.integer "Priority",                                :null => false
    t.string  "Memo",      :limit => 100
    t.string  "Icon",      :limit => 100
    t.integer "InSystem",                 :default => 0, :null => false
  end

  create_table "dgfunctions", :force => true do |t|
    t.string  "Name",             :limit => 20,                    :null => false
    t.string  "GroupID",          :limit => 32,                    :null => false
    t.string  "Icon",             :limit => 50,                    :null => false
    t.string  "LocateName",       :limit => 50,                    :null => false
    t.string  "Image",            :limit => 50
    t.string  "FunctionPage",     :limit => 50
    t.integer "Priority",                                          :null => false
    t.string  "Memo",             :limit => 100
    t.boolean "WhetherProtected",                :default => true, :null => false
  end

  add_index "dgfunctions", ["GroupID"], :name => "FK_DGFUNCTI_REFERENCE_DGFUNCGR"

  create_table "dgorganise", :primary_key => "ID", :force => true do |t|
    t.string  "NO",       :limit => 50,  :null => false
    t.string  "ParentID", :limit => 32
    t.boolean "IsRoot",                  :null => false
    t.string  "Name",     :limit => 100, :null => false
    t.string  "PhoneNO",  :limit => 20
    t.string  "Memo",     :limit => 100
  end

  add_index "dgorganise", ["NO"], :name => "AK_KEY_2_DGORGANI", :unique => true
  add_index "dgorganise", ["ParentID"], :name => "FK_DGORGANI_REFERENCE_DGORGANI"

  create_table "dgrateitems", :primary_key => "ID", :force => true do |t|
    t.string  "Name",        :limit => 50,  :null => false
    t.integer "Mode",        :limit => 8
    t.integer "Priority",                   :null => false
    t.string  "Rate",        :limit => 500, :null => false
    t.string  "Memo",        :limit => 200
    t.string  "CalcDetails", :limit => 500
  end

  create_table "dgrecordcontents", :primary_key => "ID", :force => true do |t|
    t.string  "Name",     :limit => 50, :null => false
    t.integer "Priority",               :null => false
  end

  create_table "dgreportitems", :primary_key => "ID", :force => true do |t|
    t.string   "ReportName",      :limit => 100
    t.boolean  "Nesting",                        :default => false, :null => false
    t.string   "ReportLocation",  :limit => 100
    t.string   "NestingLocation", :limit => 100
    t.datetime "UpdateDate"
    t.string   "Memo",            :limit => 256
  end

  create_table "dgrole", :primary_key => "ID", :force => true do |t|
    t.string "NO",   :limit => 50, :null => false
    t.string "Name", :limit => 20, :null => false
  end

  add_index "dgrole", ["NO"], :name => "AK_KEY_2_DGROLE", :unique => true

  create_table "dgrolebiz", :id => false, :force => true do |t|
    t.string "Rol_ID", :limit => 32, :null => false
    t.string "Biz_ID", :limit => 32, :null => false
  end

  add_index "dgrolebiz", ["Biz_ID"], :name => "FK_DGROLEBI_REFERENCE_DGBIZ"

  create_table "dgroleflow", :id => false, :force => true do |t|
    t.string "Rol_ID", :limit => 32, :null => false
    t.string "FLO_ID", :limit => 32, :null => false
  end

  create_table "dgrolefunction", :id => false, :force => true do |t|
    t.string "Rol_ID", :limit => 32, :null => false
    t.string "Fun_ID", :limit => 32, :null => false
  end

  add_index "dgrolefunction", ["Fun_ID"], :name => "Relationship_4_FK"
  add_index "dgrolefunction", ["Rol_ID"], :name => "Relationship_3_FK"

  create_table "dgsystemlog", :primary_key => "ID", :force => true do |t|
    t.datetime "LogDate"
    t.string   "LogThread",  :limit => 50
    t.string   "LogLevel",   :limit => 10
    t.string   "EmployeeID", :limit => 32
    t.string   "LogClass",   :limit => 100
    t.string   "Messages",   :limit => 100
  end

  add_index "dgsystemlog", ["EmployeeID"], :name => "FK_DGSYSTEM_REFERENCE_DGEMPLOY"

  create_table "dgsystemparam", :primary_key => "ID", :force => true do |t|
    t.string "NO",         :limit => 50,  :null => false
    t.string "ParamType",  :limit => 50
    t.string "ParamValue", :limit => 100
    t.string "Comment",    :limit => 100
  end

  create_table "dgwordbook", :force => true do |t|
    t.string  "Key",      :limit => 50,  :null => false
    t.string  "Value",    :limit => 100, :null => false
    t.integer "TypeID",   :limit => 8,   :null => false
    t.string  "Memo",     :limit => 100
    t.integer "Priority",                :null => false
  end

  add_index "dgwordbook", ["TypeID"], :name => "Relationship_11_FK"

  create_table "dgwordbooktype", :force => true do |t|
    t.string  "key",      :limit => 50,  :null => false
    t.string  "TypeName", :limit => 50,  :null => false
    t.boolean "IsSystem",                :null => false
    t.string  "Memo",     :limit => 100
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

  create_table "districts", :force => true do |t|
    t.string "NO",             :limit => 50,  :null => false
    t.string "Name",           :limit => 100
    t.string "memo",           :limit => 200
    t.string "WordNO",         :limit => 50
    t.string "DisNO",          :limit => 50
    t.string "ProvinceCityID", :limit => 32
  end

  add_index "districts", ["NO"], :name => "AK_KEY_2_DISTRICT", :unique => true

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

  create_table "ecemployee", :primary_key => "ID", :force => true do |t|
    t.string   "NO",              :limit => 50,  :null => false
    t.string   "Owner",           :limit => 32,  :null => false
    t.string   "EvaluateCompany", :limit => 32,  :null => false
    t.string   "Password",        :limit => 100
    t.string   "LicenseNO",       :limit => 50
    t.datetime "LicenseDateTo"
    t.string   "Phone",           :limit => 50
    t.integer  "Education",       :limit => 8
    t.datetime "DateTo"
    t.boolean  "isOff"
    t.datetime "CreateDate"
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.integer  "LicenseLeve",     :limit => 8
    t.string   "Memo",            :limit => 256
  end

  add_index "ecemployee", ["NO"], :name => "AK_KEY_2_ECEMPLOY", :unique => true
  add_index "ecemployee", ["Owner"], :name => "FK_ECEMPLOY_REFERENCE_OWNERINF"

  create_table "emptyhouse", :primary_key => "ID", :force => true do |t|
    t.string  "BuildID",          :limit => 32,                :null => false
    t.integer "UseType"
    t.integer "HouseOrder",                     :default => 1, :null => false
    t.integer "HouseUnit",                      :default => 1, :null => false
    t.integer "InFloor",                        :default => 1, :null => false
    t.integer "RowSpan",                        :default => 1, :null => false
    t.integer "ColSpan",                        :default => 1, :null => false
    t.integer "UnionUnitColSpan",               :default => 0, :null => false
    t.string  "InFloorName",      :limit => 50
    t.string  "HouseUnitName",    :limit => 20
    t.integer "Page",                           :default => 1, :null => false
    t.integer "UnionColSpanLeft",               :default => 0, :null => false
  end

  add_index "emptyhouse", ["BuildID"], :name => "FK_EMPTYHOU_REFERENCE_BUILD"

  create_table "evaluatecorporation", :primary_key => "ID", :force => true do |t|
    t.string   "NO",              :limit => 50
    t.string   "Name",            :limit => 100
    t.string   "Owner",           :limit => 10
    t.string   "Owner_card",      :limit => 25
    t.string   "OwnerWay",        :limit => 20
    t.string   "Manager",         :limit => 10
    t.string   "Email",           :limit => 20
    t.string   "Phone",           :limit => 20
    t.string   "Fax",             :limit => 15
    t.string   "Postalcode",      :limit => 10
    t.string   "Address",         :limit => 100
    t.string   "CompanyNo",       :limit => 10
    t.string   "Companylicense",  :limit => 20
    t.datetime "RecordDate"
    t.string   "Icon",            :limit => 100
    t.string   "Memo",            :limit => 256
    t.string   "Password",        :limit => 50
    t.boolean  "IsOff",                                                         :default => false
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.string   "TaxLicenseNO",    :limit => 100
    t.integer  "CompanyType",     :limit => 8
    t.decimal  "RegMoney",                       :precision => 13, :scale => 3
    t.integer  "GroupLeve",       :limit => 8
    t.string   "WebAddress",      :limit => 100
    t.datetime "DateTo"
    t.integer  "ChildrenCount"
    t.string   "ChildrenCompany", :limit => 200
  end

  add_index "evaluatecorporation", ["NO"], :name => "AK_KEY_2_EVALUATE", :unique => true

  create_table "financialinfo", :primary_key => "ID", :force => true do |t|
    t.string "No",          :limit => 30
    t.string "Name",        :limit => 50
    t.string "Phone",       :limit => 50
    t.string "LegalPeople", :limit => 50
    t.string "Address",     :limit => 100
  end

  add_index "financialinfo", ["No"], :name => "AK_KEY_2_FINANCIA", :unique => true

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

  create_table "house", :force => true do |t|
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
    t.decimal  "SellSumPrice",                         :precision => 18, :scale => 3,  :default => 0.0
    t.decimal  "SumPrice",                             :precision => 18, :scale => 3
    t.decimal  "LoftPrice",                            :precision => 18, :scale => 3
    t.decimal  "SellPrice",                            :precision => 18, :scale => 3
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
    t.integer  "PayType",               :limit => 8
    t.datetime "RecordDate"
    t.datetime "SignDate"
    t.boolean  "InitReg",                                                              :default => false, :null => false
    t.boolean  "FirmlyPower",                                                          :default => false, :null => false
    t.boolean  "OutPlan",                                                              :default => false, :null => false
    t.datetime "InitRegDate"
  end

  add_index "house", ["BuildID", "HouseOrder"], :name => "AK_KEY_3_HOUSE", :unique => true
  add_index "house", ["LandInfo"], :name => "FK_HOUSE_REFERENCE_LANDINFO"
  add_index "house", ["MainOwner"], :name => "FK_HOUSE_REFERENCE_OWNERINF"
  add_index "house", ["NO"], :name => "AK_KEY_2_HOUSE", :unique => true

  create_table "houseandbusiness", :id => false, :force => true do |t|
    t.string "BizID",   :limit => 32, :null => false
    t.string "HouseID", :limit => 32, :null => false
  end

  create_table "houseandcard", :id => false, :force => true do |t|
    t.string "HouseID", :limit => 32, :null => false
    t.string "CardID",  :limit => 32, :null => false
  end

  add_index "houseandcard", ["CardID"], :name => "FK_HOUSEAND_REFERENCE_HOUSECAR"

  create_table "houseandrecordowner", :id => false, :force => true do |t|
    t.string "HouseID", :limit => 32, :null => false
    t.string "OwnerID", :limit => 32, :null => false
  end

  add_index "houseandrecordowner", ["OwnerID"], :name => "FK_HOUSEAND_REFERENCE_OWNERINF"

  create_table "housecard", :primary_key => "ID", :force => true do |t|
    t.string   "BizID",      :limit => 32
    t.string   "NO",         :limit => 50
    t.integer  "Type",       :limit => 8,                                  :null => false
    t.datetime "PrintTime"
    t.boolean  "Cancel",                                                   :null => false
    t.string   "Memo",       :limit => 200
    t.string   "ColPeo",     :limit => 20
    t.string   "ColTel",     :limit => 30
    t.datetime "ColTime"
    t.string   "OwnerID",    :limit => 32
    t.string   "BusinessID", :limit => 32
    t.integer  "Relation",   :limit => 8
    t.decimal  "PoolArea",                  :precision => 18, :scale => 3
    t.string   "Perc",       :limit => 50
    t.string   "CardNO",     :limit => 50
    t.string   "KEYCODE",    :limit => 12
  end

  add_index "housecard", ["OwnerID"], :name => "FK_HOUSECAR_REFERENCE_OWNERINF"

  create_table "housecardnumber", :id => false, :force => true do |t|
    t.string  "id",   :limit => 32, :null => false
    t.string  "NO",   :limit => 50, :null => false
    t.integer "Type", :limit => 8,  :null => false
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

  create_table "housestate", :primary_key => "ID", :force => true do |t|
    t.string "HouseID",  :limit => 32, :null => false
    t.string "StateKey", :limit => 32, :null => false
    t.string "FcBizId",  :limit => 12
  end

  add_index "housestate", ["HouseID"], :name => "FK_HOUSESTA_REFERENCE_HOUSE"

  create_table "iemployee", :primary_key => "ID", :force => true do |t|
    t.string   "NO",            :limit => 50,  :null => false
    t.string   "Intermediary",  :limit => 32,  :null => false
    t.string   "Owner",         :limit => 32,  :null => false
    t.string   "LicenseNO",     :limit => 50
    t.datetime "LicenseDateTo"
    t.string   "Phone",         :limit => 50
    t.integer  "Education",     :limit => 8
    t.datetime "DateTo"
    t.boolean  "isOff"
    t.string   "Password",      :limit => 50
    t.datetime "CreateDate"
    t.datetime "OffDate"
    t.string   "GoodAction",    :limit => 100
    t.string   "NoGoodAction",  :limit => 100
    t.string   "Complaints",    :limit => 100
    t.integer  "LicenseLeve",   :limit => 8
    t.string   "Memo",          :limit => 200
  end

  add_index "iemployee", ["Intermediary"], :name => "FK_IEMPLOYE_REFERENCE_INTERMED"
  add_index "iemployee", ["NO"], :name => "AK_KEY_2_IEMPLOYE", :unique => true
  add_index "iemployee", ["Owner"], :name => "FK_IEMPLOYE_REFERENCE_OWNERINF"

  create_table "intermediary", :primary_key => "ID", :force => true do |t|
    t.string   "NO",              :limit => 50
    t.string   "Name",            :limit => 50,                                 :null => false
    t.datetime "RecordDate"
    t.string   "Address",         :limit => 100
    t.string   "PhoneNumber",     :limit => 200
    t.string   "OwnerName",       :limit => 20
    t.string   "OwnerCard",       :limit => 50
    t.string   "Fax",             :limit => 50
    t.string   "E_Mail",          :limit => 50
    t.string   "Icon",            :limit => 100
    t.string   "Memo",            :limit => 256
    t.string   "Password",        :limit => 50
    t.string   "PostCode",        :limit => 50
    t.boolean  "IsOff"
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.string   "LicenseNO",       :limit => 100
    t.string   "TaxLicenseNO",    :limit => 100
    t.string   "CompanyCode",     :limit => 100
    t.integer  "CompanyType",     :limit => 8
    t.decimal  "RegMoney",                       :precision => 13, :scale => 3
    t.integer  "GroupLeve",       :limit => 8
    t.string   "WebAddress",      :limit => 100
    t.datetime "DateTo"
    t.integer  "ChildrenCount"
    t.string   "ChildrenCompany", :limit => 200
    t.string   "Manager",         :limit => 20
  end

  add_index "intermediary", ["NO"], :name => "AK_KEY_2_INTERMED", :unique => true

  create_table "landinfo", :primary_key => "ID", :force => true do |t|
    t.string   "NO",           :limit => 50,                                 :null => false
    t.integer  "LandProperty", :limit => 8
    t.datetime "LUTS"
    t.datetime "LUTO"
    t.decimal  "LandArea",                    :precision => 18, :scale => 3
    t.string   "LandCardNO",   :limit => 50
    t.string   "Memo",         :limit => 200
    t.integer  "LandGetMode",  :limit => 8
  end

  create_table "mappingcorporation", :primary_key => "ID", :force => true do |t|
    t.string   "NO",              :limit => 50
    t.string   "Name",            :limit => 100
    t.string   "Owner",           :limit => 10
    t.string   "Owner_card",      :limit => 25
    t.string   "OwnerWay",        :limit => 20
    t.string   "Manager",         :limit => 10
    t.string   "Email",           :limit => 20
    t.string   "Phone",           :limit => 20
    t.string   "Fax",             :limit => 15
    t.string   "Postalcode",      :limit => 10
    t.string   "Address",         :limit => 100
    t.string   "CompanyNo",       :limit => 10
    t.string   "Companylicense",  :limit => 20
    t.string   "Memo",            :limit => 256
    t.datetime "RecordDate"
    t.string   "Icon",            :limit => 100
    t.string   "Password",        :limit => 50
    t.boolean  "IsOff",                                                         :default => false
    t.datetime "OffDate"
    t.string   "GoodAction",      :limit => 100
    t.string   "NoGoodAction",    :limit => 100
    t.string   "Complaints",      :limit => 100
    t.string   "TaxLicenseNO",    :limit => 100
    t.integer  "CompanyType",     :limit => 8
    t.decimal  "RegMoney",                       :precision => 13, :scale => 3
    t.integer  "GroupLeve",       :limit => 8
    t.string   "WebAddress",      :limit => 100
    t.datetime "DateTo"
    t.integer  "ChildrenCount"
    t.string   "ChildrenCompany", :limit => 200
  end

  add_index "mappingcorporation", ["NO"], :name => "AK_KEY_2_MAPPINGC", :unique => true

  create_table "mcemployee", :primary_key => "ID", :force => true do |t|
    t.string   "Employee",      :limit => 32,  :null => false
    t.string   "MapCompany",    :limit => 32,  :null => false
    t.string   "NO",            :limit => 50,  :null => false
    t.string   "LicenseNO",     :limit => 50
    t.datetime "LicenseDateTo"
    t.string   "Phone",         :limit => 50
    t.integer  "Education",     :limit => 8
    t.datetime "DateTo"
    t.boolean  "isOff"
    t.datetime "CreateDate"
    t.datetime "OffDate"
    t.string   "GoodAction",    :limit => 100
    t.string   "NoGoodAction",  :limit => 100
    t.string   "Complaints",    :limit => 100
    t.integer  "LicenseLeve",   :limit => 8
    t.string   "Memo",          :limit => 200
  end

  add_index "mcemployee", ["NO"], :name => "AK_KEY_2_MCEMPLOY", :unique => true

  create_table "mcompany", :primary_key => "ID", :force => true do |t|
    t.string   "NO",           :limit => 50
    t.string   "Name",         :limit => 50,                                 :null => false
    t.datetime "RecordDate"
    t.string   "Address",      :limit => 100
    t.string   "PhoneNumber",  :limit => 200
    t.string   "OwnerName",    :limit => 20
    t.string   "OwnerCard",    :limit => 50
    t.string   "Fax",          :limit => 50
    t.string   "E_Mail",       :limit => 50
    t.string   "Icon",         :limit => 100
    t.string   "Memo",         :limit => 200
    t.string   "Password",     :limit => 50
    t.string   "PostCode",     :limit => 50
    t.boolean  "IsOff"
    t.datetime "OffDate"
    t.string   "GoodAction",   :limit => 100
    t.string   "NoGoodAction", :limit => 100
    t.string   "Complaints",   :limit => 100
    t.string   "LicenseNO",    :limit => 100
    t.string   "TaxLicenseNO", :limit => 100
    t.string   "CompanyCode",  :limit => 100
    t.integer  "CompanyType",  :limit => 8
    t.decimal  "RegMoney",                    :precision => 13, :scale => 3
    t.integer  "GroupLeve",    :limit => 8
    t.string   "WebAddress",   :limit => 100
    t.datetime "DateTo"
    t.string   "Manager",      :limit => 20
  end

  add_index "mcompany", ["NO"], :name => "AK_KEY_2_MCOMPANY", :unique => true

  create_table "newhousecontract", :primary_key => "ID", :force => true do |t|
    t.string   "NO",               :limit => 50,                                                :null => false
    t.string   "DEmployee",        :limit => 32,                                                :null => false
    t.string   "House",            :limit => 32,                                                :null => false
    t.string   "Owner",            :limit => 32,                                                :null => false
    t.string   "Password",         :limit => 50
    t.datetime "RecordDate"
    t.decimal  "TransactionPrice",                :precision => 18, :scale => 3,                :null => false
    t.integer  "State",            :limit => 8,                                  :default => 0, :null => false
    t.string   "Memo",             :limit => 200
    t.integer  "PartCount",                                                                     :null => false
    t.integer  "PayType",          :limit => 8
  end

  add_index "newhousecontract", ["DEmployee"], :name => "FK_NEWHOUSE_REFERENCE_DEMPLOYE"
  add_index "newhousecontract", ["House"], :name => "FK_NEWHOUSE_REFERENCE_HOUSE"
  add_index "newhousecontract", ["NO"], :name => "AK_KEY_2_NEWHOUSE", :unique => true
  add_index "newhousecontract", ["Owner"], :name => "FK_NEWHOUSE_REFERENCE_OWNERINF"

  create_table "objectid", :primary_key => "next", :force => true do |t|
  end

  create_table "oldhousecontract", :primary_key => "ID", :force => true do |t|
    t.string   "NO",               :limit => 50,                                                :null => false
    t.string   "IEmployee",        :limit => 32,                                                :null => false
    t.datetime "RecordDate"
    t.string   "House",            :limit => 32,                                                :null => false
    t.string   "Release",          :limit => 32,                                                :null => false
    t.string   "Buyer",            :limit => 32,                                                :null => false
    t.string   "Seller",           :limit => 32,                                                :null => false
    t.decimal  "TransactionPrice",                :precision => 18, :scale => 3
    t.integer  "State",            :limit => 8,                                  :default => 0, :null => false
    t.string   "Memo",             :limit => 200
    t.string   "Password",         :limit => 50
    t.integer  "PartCount",                                                                     :null => false
    t.integer  "PayType",          :limit => 8
  end

  add_index "oldhousecontract", ["Buyer"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF2"
  add_index "oldhousecontract", ["House"], :name => "FK_OLDHOUSE_REFERENCE_HOUSE2"
  add_index "oldhousecontract", ["IEmployee"], :name => "FK_OLDHOUSE_REFERENCE_IEMPLOYE2"
  add_index "oldhousecontract", ["NO"], :name => "AK_KEY_2_OLDHOUSE2", :unique => true
  add_index "oldhousecontract", ["Release"], :name => "FK_OLDHOUSE_REFERENCE_OLDHOUSE2"
  add_index "oldhousecontract", ["Seller"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF3"

  create_table "oldhousecontractandowner", :id => false, :force => true do |t|
    t.string "Record", :limit => 32, :null => false
    t.string "Owner",  :limit => 32, :null => false
  end

  add_index "oldhousecontractandowner", ["Owner"], :name => "FK_OLDHOUSE_REFERENCE_OWNERINF"

  create_table "oldhouserelease", :primary_key => "ID", :force => true do |t|
    t.string   "NO",               :limit => 50,                                                :null => false
    t.string   "House",            :limit => 32
    t.string   "IEmployee",        :limit => 32
    t.decimal  "TransactionPrice",                :precision => 18, :scale => 3
    t.integer  "State",            :limit => 8,                                  :default => 0, :null => false
    t.datetime "RecordDate"
    t.datetime "DateTo",                                                                        :null => false
    t.string   "CheckEmployee",    :limit => 32
    t.string   "CheckView",        :limit => 200
    t.string   "Memo",             :limit => 200
    t.integer  "TaxPayType",       :limit => 8
    t.integer  "Decoration",       :limit => 8
    t.string   "SManagement",      :limit => 200
    t.integer  "WXZJOper",         :limit => 8
    t.string   "OtherHouse",       :limit => 200
    t.string   "Equipment",        :limit => 200
  end

  add_index "oldhouserelease", ["House"], :name => "FK_OLDHOUSE_REFERENCE_HOUSE"
  add_index "oldhouserelease", ["IEmployee"], :name => "FK_OLDHOUSE_REFERENCE_IEMPLOYE"
  add_index "oldhouserelease", ["NO"], :name => "AK_KEY_2_OLDHOUSE", :unique => true

  create_table "ownergroup", :primary_key => "ID", :force => true do |t|
    t.string   "NO",         :limit => 50,  :null => false
    t.string   "Name",       :limit => 50,  :null => false
    t.string   "Section",    :limit => 32,  :null => false
    t.string   "Owner",      :limit => 50
    t.string   "Phone",      :limit => 50
    t.string   "Address",    :limit => 200
    t.datetime "CreateDate"
    t.integer  "TotalCount"
    t.string   "Memo",       :limit => 200
  end

  add_index "ownergroup", ["NO"], :name => "AK_KEY_2_OWNERGRO", :unique => true
  add_index "ownergroup", ["Section"], :name => "FK_OWNERGRO_REFERENCE_SECTION"

  create_table "ownerinfo", :primary_key => "ID", :force => true do |t|
    t.string   "NO",          :limit => 50,  :null => false
    t.integer  "Type",        :limit => 8
    t.string   "Name",        :limit => 100
    t.integer  "IDType",      :limit => 8
    t.string   "IDNO",        :limit => 50
    t.integer  "Sex"
    t.string   "Phone",       :limit => 50
    t.string   "City",        :limit => 50
    t.string   "Address",     :limit => 100
    t.string   "Memo",        :limit => 100
    t.string   "Nation",      :limit => 50
    t.datetime "Birthday"
    t.integer  "Domicile",    :limit => 8
    t.integer  "Nationality", :limit => 8
  end

  add_index "ownerinfo", ["NO"], :name => "AK_KEY_2_OWNERINF", :unique => true

  create_table "poolbuild", :primary_key => "ID", :force => true do |t|
    t.string   "SectionID",    :limit => 32,  :null => false
    t.string   "BuildName",    :limit => 50
    t.integer  "Structure",    :limit => 8
    t.string   "Address",      :limit => 200
    t.string   "MapNumber",    :limit => 50
    t.string   "BlockNO",      :limit => 50
    t.string   "BuildNO",      :limit => 50
    t.string   "HouseNO",      :limit => 50
    t.integer  "LayerNumber"
    t.float    "BuildArea"
    t.datetime "RegisterTime"
    t.string   "Memo",         :limit => 200
  end

  add_index "poolbuild", ["SectionID"], :name => "FK_POOLBUIL_REFERENCE_SECTION"

  create_table "porjectcardandbuild", :id => false, :force => true do |t|
    t.string  "ProjectCard",   :limit => 32,                                :null => false
    t.string  "Build",         :limit => 32,                                :null => false
    t.decimal "SumArea",                     :precision => 18, :scale => 3
    t.integer "SumCount"
    t.decimal "HomeArea",                    :precision => 18, :scale => 3
    t.integer "HomeCount"
    t.decimal "UnhomeArea",                  :precision => 18, :scale => 3
    t.integer "UnhomeCount"
    t.decimal "NetPointArea",                :precision => 18, :scale => 3
    t.integer "NetPointCount"
  end

  add_index "porjectcardandbuild", ["Build"], :name => "FK_PORJECTC_REFERENCE_BUILD"

  create_table "project", :force => true do |t|
    t.string   "NO",                 :limit => 100,                                                   :null => false
    t.string   "Name",               :limit => 50,                                                    :null => false
    t.string   "SectionID",          :limit => 32
    t.string   "DeveloperID",        :limit => 32
    t.string   "Address",            :limit => 200
    t.datetime "OpenDate"
    t.datetime "CheckDate"
    t.string   "BuildSize",          :limit => 20
    t.integer  "BuildCount"
    t.decimal  "InvestMoney",                       :precision => 18, :scale => 3
    t.datetime "FinishDate"
    t.decimal  "Area",                              :precision => 18, :scale => 3
    t.decimal  "SumArea",                           :precision => 18, :scale => 3
    t.decimal  "HomeArea",                          :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "UNHomeArea",                        :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "NetPointArea",                      :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "OfficeArea",                        :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "DepotArea",                         :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "CommonArea",                        :precision => 18, :scale => 3, :default => 0.0
    t.decimal  "OtherArea",                         :precision => 18, :scale => 3, :default => 0.0
    t.integer  "SellCount",                                                        :default => 0
    t.integer  "HomeCount",                                                        :default => 0
    t.integer  "UNHomeCount",                                                      :default => 0
    t.integer  "NetPointCount",                                                    :default => 0
    t.integer  "OfficeCount",                                                      :default => 0
    t.integer  "DepotCount",                                                       :default => 0
    t.integer  "CommonCount",                                                      :default => 0
    t.integer  "OtherCount",                                                       :default => 0
    t.decimal  "HouseBeginPrice",                   :precision => 18, :scale => 3
    t.decimal  "HouseAvePrice",                     :precision => 18, :scale => 3
    t.decimal  "OtherBeginPrice",                   :precision => 18, :scale => 3
    t.decimal  "OtherHouseAvePrice",                :precision => 18, :scale => 3
    t.decimal  "NetPointBeginPrice",                :precision => 18, :scale => 3
    t.decimal  "NetPointAvePrice",                  :precision => 18, :scale => 3
    t.decimal  "OfficeBeginPrice",                  :precision => 18, :scale => 3
    t.decimal  "OfficeAvePrice",                    :precision => 18, :scale => 3
    t.decimal  "DepotBeginPrice",                   :precision => 18, :scale => 3
    t.decimal  "DepotAvePrice",                     :precision => 18, :scale => 3
    t.decimal  "OtherPrice",                        :precision => 18, :scale => 3
    t.string   "Phone",              :limit => 20
    t.string   "USLLicence",         :limit => 100
    t.string   "BCLicence",          :limit => 100
    t.string   "PClicence",          :limit => 100
    t.string   "JWLicence",          :limit => 100
    t.string   "YYLicence",          :limit => 100
    t.datetime "ComeDate"
    t.integer  "State",              :limit => 8,                                                     :null => false
    t.boolean  "InBiz",                                                            :default => false, :null => false
    t.string   "InBizCode",          :limit => 200
    t.string   "Memo",               :limit => 200
    t.datetime "LUTS"
    t.datetime "LUTO"
    t.integer  "LandGetMode",        :limit => 8
    t.integer  "DataSource",         :limit => 8
    t.datetime "MappingDate"
    t.string   "MappingMemo",        :limit => 200
    t.string   "LandCardNO",         :limit => 50
    t.decimal  "LandArea",                          :precision => 18, :scale => 3
    t.integer  "LandProperty",       :limit => 8
    t.decimal  "LandMoney",                         :precision => 18, :scale => 3
    t.datetime "CreateDate"
    t.string   "BCardNO",            :limit => 50
    t.datetime "BCardDate"
    t.integer  "BCardCount"
    t.datetime "BCardCDate"
    t.boolean  "Seal",                                                             :default => false, :null => false
    t.decimal  "PlanArea",                          :precision => 18, :scale => 0
    t.decimal  "GarageArea",                        :precision => 18, :scale => 0
    t.integer  "GarageCount"
    t.integer  "IsCard",                                                           :default => 0
  end

  add_index "project", ["DeveloperID"], :name => "FK_PROJECT_REFERENCE_DEVELOPE"
  add_index "project", ["NO"], :name => "AK_KEY_2_PROJECT", :unique => true
  add_index "project", ["SectionID"], :name => "FK_PROJECT_REFERENCE_SECTION"

  create_table "projectandcard", :id => false, :force => true do |t|
    t.string "Card",    :limit => 32, :null => false
    t.string "Project", :limit => 32, :null => false
  end

  add_index "projectandcard", ["Project"], :name => "FK_PROJECTA_REFERENCE_PROJECT"

  create_table "projectcard", :primary_key => "ID", :force => true do |t|
    t.string   "NO",            :limit => 50,                                                    :null => false
    t.integer  "Type",          :limit => 8,                                                     :null => false
    t.string   "BizID",         :limit => 32
    t.datetime "PrintTime"
    t.boolean  "Cancel",                                                                         :null => false
    t.string   "Memo",          :limit => 200
    t.string   "ColPeo",        :limit => 10
    t.string   "ColTel",        :limit => 30
    t.datetime "ColTime"
    t.string   "BusinessID",    :limit => 32
    t.integer  "HouseCount"
    t.integer  "BuildCount"
    t.decimal  "SumArea",                      :precision => 18, :scale => 3
    t.boolean  "IsPrepareSell",                                               :default => false
    t.string   "UseType",       :limit => 50
    t.string   "SellObject",    :limit => 50
    t.string   "YearNum",       :limit => 50
    t.string   "OrderNum",      :limit => 50
    t.string   "CardNO",        :limit => 50
    t.string   "KEYCODE",       :limit => 12
  end

  create_table "projectcreateprocess", :primary_key => "ID", :force => true do |t|
    t.string   "project",     :limit => 32
    t.datetime "processDate"
    t.decimal  "money",                      :precision => 18, :scale => 3
    t.decimal  "houseMoney",                 :precision => 18, :scale => 3
    t.string   "memo",        :limit => 200
  end

  add_index "projectcreateprocess", ["project"], :name => "FK_PROJECTC_REFERENCE_PROJECT"

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

  create_table "provincecity", :primary_key => "ID", :force => true do |t|
    t.string "NO",           :limit => 50
    t.string "ProvinceName", :limit => 100
    t.string "CityName",     :limit => 100
    t.string "Memo",         :limit => 200
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

  create_table "section", :force => true do |t|
    t.string   "NO",         :limit => 20,  :null => false
    t.string   "DistrictID", :limit => 32
    t.string   "Name",       :limit => 50,  :null => false
    t.datetime "CreateDate"
    t.string   "Address",    :limit => 200
    t.string   "Memo",       :limit => 200
  end

  add_index "section", ["DistrictID"], :name => "FK_SECTION_REFERENCE_DISTRICT"
  add_index "section", ["NO"], :name => "AK_KEY_2_SECTION", :unique => true

  create_table "smsubcompany", :primary_key => "ID", :force => true do |t|
    t.string   "MCompany", :limit => 32
    t.string   "Section",  :limit => 32,  :null => false
    t.string   "Name",     :limit => 50
    t.string   "Address",  :limit => 100
    t.string   "Owner",    :limit => 50
    t.string   "Phone",    :limit => 50
    t.datetime "RegDate"
    t.boolean  "IsOff"
    t.datetime "OffDate"
    t.string   "Memo",     :limit => 200
  end

  add_index "smsubcompany", ["MCompany"], :name => "FK_SMSUBCOM_REFERENCE_MCOMPANY"
  add_index "smsubcompany", ["Section"], :name => "FK_SMSUBCOM_REFERENCE_SECTION"

end
