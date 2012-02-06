class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init
  
  
  def init
    
    @function_groups = Dgfuncgroup.all(:include=>:dgfunctions,:order=>"Priority")

  end
end
