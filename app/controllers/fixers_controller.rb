class FixersController < ApplicationController
  before_filter :init_class
  attr_accessor :object_class
  
  def init_class
    class_string=params[:class]
    @object_class = class_string.classify().constantize()    
  end
# maintain all data in this controller
  def list
    @objects = @object_class.all()    
  end
  
  def new
    # action :create may call this action
    @object ||= @object_class.new
    respond_to do |format|
      format.html # new.html.erb
      format.js  { render_dialog("new.html.erb") }
    end
  end
  
  def edit
    @object ||= @object_class.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.js  { render_dialog("edit.html.erb") }
    end
    
  end
  
  def create
    object_params = params[:object]    
    @object = @object_class.new(object_params)
    if @object.save
      redirect_back_or_default(:action=>"list")      
    else
      new
    end
    
  end
  
  def update
    object_params = params[:object]    
    @object = @object_class.find(params[:id])
    if @object.update_attributes(object_params)
      redirect_back_or_default(:action=>"list")      
    else
      edit
    end
  end
  
  def destroy
    @object = @object_class.find(params[:id])
    @object.destroy

    respond_to do |format|
      format.html { redirect_to(:action=>:list) }
      format.xml  { head :ok }
    end
  end
  
end
