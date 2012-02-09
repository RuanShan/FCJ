// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function center_container(ele_id){
  var ele = $("#" + ele_id);
  ele.css("position", "absolute");
  ele.css("top", ($(window).height() - ele.height()) / 2 + $(window).scrollTop() + "px");
  ele.css("left", ($(window).width() - ele.width()) / 2 + $(window).scrollLeft() + "px");
}

function add_list_feature(selector){
  /*
   * dom is like
   *
   *  <div> <ul>  <li> a</li>  </ul>
   *        <input> 
   *  </div>
   *  <div>
   *    <div> div1  </div>
   *    <div> div2  </div>
   *  </div>
   */
  
  
$(selector).click(function(){
    $(this).parent().children().removeClass('selected');
    $(this).addClass('selected'); 
    $(this).parent().parent().next().children().removeClass('selected');
    $(this).parent().parent().next().children().eq($(this).index()).addClass('selected');
    $(this).parent().siblings('input').val($(this).attr('data-section-id'))
  });
}
function dialog(op)
{
  $("#model_dialog").hide()
}

function submitForm(form_id, action){
  var form = $(form_id);
  form.attr('action',action);
  form.submit();
  }