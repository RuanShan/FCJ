class FixerController < ApplicationController
# maintain all data in this controller
  def list
    class_string=params[:class]
    @object_class = class_string.classify().constantize()
    @objects = @object_class.all()
    
  end
  
  def new_object
    
    
  end
  
  
  def create_object
    
    
  end
end
