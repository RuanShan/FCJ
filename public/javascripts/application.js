// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function center_container(ele_id){
  var ele = $("#" + ele_id);
  ele.css("position", "absolute");
  ele.css("top", ($(window).height() - ele.height()) / 2 + $(window).scrollTop() + "px");
  ele.css("left", ($(window).width() - ele.width()) / 2 + $(window).scrollLeft() + "px");
}

function dialog(op)
{
  $("#model_dialog").hide()
}
