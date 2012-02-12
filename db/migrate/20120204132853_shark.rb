class Shark < ActiveRecord::Migration
  def self.up
      create_table "dgbizs", :primary_key => "id", :force => true do |t|
        t.string  "Code",         :limit => 200, :null => false
        t.integer "StartVarType", :limit => 8
        t.string  "StartVarName", :limit => 50
        t.string  "Memo",         :limit => 200
        t.string  "OperPage",     :limit => 200
        t.string  "StartService", :limit => 100
        t.string  "PackageName",  :limit => 50
      end
    
      add_index "dgbizs", ["Code"], :name => "AK_KEY_2_DGBIZ", :unique => true
      add_index "dgbizs", ["StartVarType"], :name => "FK_DGBIZ_REFERENCE_DGWORDBO"
    
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
    
      create_table "dgemployees", :primary_key => "id", :force => true do |t|
        t.string   "dgorganiseID",      :limit => 32
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
    
      add_index "dgemployees", ["NO"], :name => "AK_KEY_2_DGEMPLOY", :unique => true
      add_index "dgemployees", ["dgorganiseID"], :name => "Relationship_6_FK"
      add_index "dgemployees", ["job"], :name => "FK_DGEMPLOY_REFERENCE_DGWORDBO"
    
      create_table "dgemployeeroles", :id => false, :force => true do |t|
        t.string "Rol_ID", :limit => 32, :null => false
        t.string "Emp_ID", :limit => 32, :null => false
      end
    
      add_index "dgemployeeroles", ["Emp_ID"], :name => "Relationship_1_FK"
      add_index "dgemployeeroles", ["Rol_ID"], :name => "Relationship_2_FK"
    
      create_table "dgfuncgroups", :primary_key => "id", :force => true,:options => 'DEFAULT CHARSET=utf8' do |t|
        t.string  "GroupName", :limit => 40,                 :null => false
        t.integer "Priority",                                :null => false
        t.string  "Memo",      :limit => 100
        t.string  "Icon",      :limit => 100
        t.integer "InSystem",                 :default => 0, :null => false
      end
    
      create_table "dgfunctions", :primary_key => "id", :force => true,:options => 'DEFAULT CHARSET=utf8' do |t|
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
    
      create_table "dgorganises", :primary_key => "id", :force => true do |t|
        t.string  "NO",       :limit => 50,  :null => false
        t.integer :dgorganiseID
        t.integer :lft
        t.integer :rgt
        t.string  "Name",     :limit => 100, :null => false
        t.string  "PhoneNO",  :limit => 20
        t.string  "Memo",     :limit => 100
      end
    
      add_index "dgorganises", ["NO"], :name => "AK_KEY_2_DGORGANI", :unique => true
      add_index "dgorganises", ["dgorganiseID"], :name => "FK_DGORGANI_REFERENCE_DGORGANI"
    
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
    
      create_table "dgroles", :primary_key => "id", :force => true do |t|
        t.string "NO",   :limit => 50, :null => false
        t.string "Name", :limit => 20, :null => false
      end
          
      add_index "dgroles", ["NO"], :name => "AK_KEY_2_DGROLE", :unique => true
    
      create_table "dgrolebizs", :id => false, :force => true do |t|
        t.string "Rol_ID", :limit => 32, :null => false
        t.string "Biz_ID", :limit => 32, :null => false
      end
    
      add_index "dgrolebizs", ["Biz_ID"], :name => "FK_DGROLEBI_REFERENCE_DGBIZ"
    
      create_table "dgrolefunctions", :id => false, :force => true do |t|
        t.string "Rol_ID", :limit => 32, :null => false
        t.string "Fun_ID", :limit => 32, :null => false
      end
    
      add_index "dgrolefunctions", ["Fun_ID"], :name => "Relationship_4_FK"
      add_index "dgrolefunctions", ["Rol_ID"], :name => "Relationship_3_FK"

      create_table "dgflows", :primary_key => "id", :force => true do |t|
        t.string "Name", :limit => 20, :null => false
        t.integer "position"
      end
      create_table "dgroleflows", :id => false, :force => true do |t|
        t.string "Rol_ID", :limit => 32, :null => false
        t.string "Flo_ID", :limit => 32, :null => false
      end
    
        
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
    
      create_table "dgwordbook", :primary_key => "id", :force => true do |t|
        t.string  "Key",      :limit => 50,  :null => false
        t.string  "Value",    :limit => 100, :null => false #名称
        t.integer "dgwordbooktypeID",   :limit => 8,   :null => false #字典类型索引
        t.string  "Memo",     :limit => 100
        t.integer "Priority",                :null => false
      end
    
      add_index "dgwordbook", ["dgwordbooktypeID"], :name => "Relationship_11_FK"
    
      create_table "dgwordbooktype", :primary_key => "id", :force => true do |t|
        t.string  "key", :limit => 50,  :null => false #字典类型KEY, 即引用字典的列名. 值为 dgwordbook id.
        t.string  "TypeName", :limit => 50,  :null => false #字典类型
        t.boolean "IsSystem",                :null => false
        t.string  "Memo",     :limit => 100
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
    
      create_table "objectid", :primary_key => "next", :force => true do |t|
      end

  end

  def self.down
    drop_table :dgbizs                  #业务
    drop_table :dgbizandrateitems      #业务收费项目
    drop_table :dgbizdoc
    drop_table :dgbizfile
    drop_table :dgemployees             #员工
    drop_table :dgemployeeroles         #员工角色关系
    drop_table :dgfuncgroups           #功能组
    drop_table :dgfunctions            #功能
    drop_table :dgorganises             #组织机构
    drop_table :dgrateitems            #收费项目
    drop_table :dgrecordcontents       #卷内目录
    drop_table :dgreportitems          #报表
    drop_table :dgroles                 #角色
    drop_table :dgrolebizs              #业务权限
    drop_table :dgrolefunctions         #功能权限
    drop_table :dgsystemlog            #系统日志
    drop_table :dgsystemparam          #系统参数
    drop_table :dgwordbook             #字典
    drop_table :dgwordbooktype         #字典类型
    drop_table :dtproperties
    drop_table :objectid
    # added
    drop_table :dgflows
    drop_table :dgroleflows
  end
end
