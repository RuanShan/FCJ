class DgbizPackage < ActiveRecord::Base
  has_many :dgbiz, :foreign_key=>"package_id"
end
