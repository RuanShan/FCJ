class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init
  
  
  def init
    
    @function_groups = Dgfuncgroup.all(:include=>:dgfunctions,:order=>"Priority")
    @function_groups.delete_if{|fg| fg.dgfunctions.empty?}

    if params[:function_id].present?
      @function = Dgfunction.first(:conditions=>["id=?",params[:function_id]])      
    end
    @function||= Dgfunction.first
    
    @active_function_index = @function_groups.index(@function.dgfuncgroup)      
  end
  
  # usage: popup a messagebox, content is message in ecs_message
  # params:  options, :op=>:close|:open
  #          
  def render_dialog(dialog_content, options={})
      #center it, then show
      if options[:op]==:close
      else
        @model_dialog_content = dialog_content
        render :partial => "layouts/model_dialog"
      end
  end  
  
  # Request: full http, ajax  
  # move to the last store_location call or to the passed default one
  def redirect_back_or_default(default=nil)
    uri = nil
    if default
      uri =  default
    elsif session[:return_to_params]
      uri =  session[:return_to_params]
    else
      uri = "/"
    end
    if uri.kind_of? Hash
      uri[:only_path] = true
      uri = url_for uri
    end  

    if request.xhr?
      render :js => "window.location = '#{uri}'"
    else
      redirect_to uri
    end    
  end    

  
end
