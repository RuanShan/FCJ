module ApplicationHelper
  def build_close_button(id_or_function)
    if id_or_function=~/[^\w]/ #contain char not in A~Z,a~z,0~9,_, we assume it is js function
      link_to_function "x", id_or_function,{:class=>"close",:tag=>"close"}
    else  
      link_to_function "x", "$('##{id_or_function}').hide()",{:class=>"close",:tag=>"close"} 
    end
  end
end
