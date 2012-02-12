class FixersController < ApplicationController
  #before_filter :authenticate_dgemployee!
  before_filter :init_class, :except => "change_permission"
  attr_accessor :object_class
  
  def init_class
    class_string=params[:class]
    #decide manager class.
    
    @object_class = class_string.classify().constantize()    
    
    # support cols groups. list cols by group, only for new|edit
    @cols_groups = []
    if @object_class.new_cols.flatten != @object_class.new_cols
      agroup =[]
      for col in @object_class.new_cols
        unless col.kind_of? ::Array
          agroup << col
          next
        else
          unless agroup.empty?
            @cols_groups << agroup.dup
            agroup.clear
          end
          @cols_groups << col          
        end        
      end
      # handle cols last x.
      unless agroup.empty?
        @cols_groups << agroup.dup
      end      
    else
      @cols_groups << @object_class.new_cols
    end
    
  end
# maintain all data in this controller
  def list
    @objects = @object_class.page params[:page]
  end
  
  def new
    # action :create may call this action
    if @object.nil?
      @object = @object_class.new()
      if params[:object]
        @object.attributes = params[:object]
      end
    end
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
      action= @object_class.manager_class == @object_class ? "list" : @object_class.manager_class
      class_name = @object_class.manager_class == @object_class ? @object_class.model_name : @object_class.manager_class.humanize()
      redirect_back_or_default(:action=>action,:class=>class_name)
    else
      new
    end
    
  end
  
  def update
    object_params = params[:object]    
    @object = @object_class.find(params[:id])
    if @object.update_attributes(object_params)
      action= @object_class.manager_class == @object_class ? "list" : @object_class.manager_class
      class_name = @object_class.manager_class == @object_class ? @object_class.model_name : @object_class.manager_class.humanize()
      redirect_back_or_default(:action=>action,:class=>class_name)
    else
      edit
    end
  end
  
  def destroy
    @object = @object_class.find(params[:id])
    @object.destroy
    action= @object_class.manager_class == @object_class ? "list" : @object_class.manager_class
    class_name = @object_class.manager_class == @object_class ? @object_class.model_name : @object_class.manager_class.humanize()
    respond_to do |format|
      format.html { redirect_to(:action=>action,:class=>class_name) }
      format.xml  { head :ok }
    end
  end
  
  #maintain dict
  def dgwordbooktype
    @objects = @object_class.all(:include=>:dgwordbooks)

  end

  def dgorganise
    @objects = @object_class.all()
    @current_organise_id = params[:selected_id].nil? ? "0" : params[:selected_id]
  end

  def dgrole
    @objects = @object_class.all(:include=>[:dgemployees,:dgfunctions,:dgbizs,:dgflows])
    @dgemployees = Dgemployee.all()
    @dgfunctions = Dgfunction.all()
    @dgbizs = Dgbiz.all()
    @dgflows = Dgflow.all()
  end

  def change_permission
    role = Dgrole.find(params[:role_id])
    types = ['dgemployee','dgfunction','dgbiz','dgflow']
    for type in types
      type_ids=[]
      params.each_key do |key|
        t,id = key.split("|")
        type_ids << id if t == type
      end
      role.send(type+"_ids=",type_ids)
    end
    redirect_back_or_default(:action=>"dgrole",:class=>Dgrole)
  end
end
