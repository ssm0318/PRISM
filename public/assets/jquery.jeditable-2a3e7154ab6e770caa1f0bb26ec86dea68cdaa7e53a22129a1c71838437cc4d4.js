/*
 * Jeditable - jQuery in place edit plugin
 *
 * Copyright (c) 2006-2009 Mika Tuupola, Dylan Verheul
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 * Project home:
 *   http://www.appelsiini.net/projects/jeditable
 *
 * Based on editable by Dylan Verheul <dylan_at_dyve.net>:
 *    http://www.dyve.net/jquery/?editable
 *
 */
!function($){$.fn.editable=function(t,e){if("disable"!=t)if("enable"!=t){if("destroy"!=t){var i=$.extend({},$.fn.editable.defaults,{target:t},e),a=$.editable.types[i.type].plugin||function(){},n=$.editable.types[i.type].submit||function(){},l=$.editable.types[i.type].buttons||$.editable.types.defaults.buttons,s=$.editable.types[i.type].content||$.editable.types.defaults.content,o=$.editable.types[i.type].element||$.editable.types.defaults.element,d=$.editable.types[i.type].reset||$.editable.types.defaults.reset,r=i.callback||function(){},p=i.onedit||function(){},u=i.onsubmit||function(){},c=i.onreset||function(){},h=i.onerror||d;return i.tooltip&&$(this).attr("title",i.tooltip),i.autowidth="auto"==i.width,i.autoheight="auto"==i.height,this.each(function(){var t=this,e=$(t).width(),y=$(t).height();$(this).data("event.editable",i.event),$.trim($(this).html())||$(this).html(i.placeholder),$(this).bind(i.event,function(c){if(!0!==$(this).data("disabled.editable")&&!t.editing&&!1!==p.apply(this,[i,t])){c.preventDefault(),c.stopPropagation(),i.tooltip&&$(t).removeAttr("title"),0==$(t).width()?(i.width=e,i.height=y):("none"!=i.width&&(i.width=i.autowidth?$(t).width():i.width),"none"!=i.height&&(i.height=i.autoheight?$(t).height():i.height)),$(this).html().toLowerCase().replace(/(;|")/g,"")==i.placeholder.toLowerCase().replace(/(;|")/g,"")&&$(this).html(""),t.editing=!0,t.revert=$(t).html(),$(t).html("");var f=$("<form />");i.cssclass&&("inherit"==i.cssclass?f.attr("class",$(t).attr("class")):f.attr("class",i.cssclass)),i.style&&("inherit"==i.style?(f.attr("style",$(t).attr("style")),f.css("display",$(t).css("display"))):f.attr("style",i.style));var b,m=o.apply(f,[i,t]);if(i.loadurl){var v=setTimeout(function(){m.disabled=!0,s.apply(f,[i.loadtext,i,t])},100),g={};g[i.id]=t.id,$.isFunction(i.loaddata)?$.extend(g,i.loaddata.apply(t,[t.revert,i])):$.extend(g,i.loaddata),$.ajax({type:i.loadtype,url:i.loadurl,data:g,async:!1,success:function(t){window.clearTimeout(v),b=t,m.disabled=!1}})}else i.data?(b=i.data,$.isFunction(i.data)&&(b=i.data.apply(t,[t.revert,i]))):b=t.revert;s.apply(f,[b,i,t]),m.attr("name",i.name),l.apply(f,[i,t]),$(t).append(f),a.apply(f,[i,t]),$(":input:visible:enabled:first",f).focus(),i.select&&m.select(),m.keydown(function(e){27==e.keyCode&&(e.preventDefault(),d.apply(f,[i,t]))}),"cancel"==i.onblur?m.blur(function(){v=setTimeout(function(){d.apply(f,[i,t])},500)}):"submit"==i.onblur?m.blur(function(){v=setTimeout(function(){f.submit()},200)}):$.isFunction(i.onblur)?m.blur(function(){i.onblur.apply(t,[m.val(),i])}):m.blur(function(){}),f.submit(function(e){if(v&&clearTimeout(v),e.preventDefault(),!1!==u.apply(f,[i,t])&&!1!==n.apply(f,[i,t]))if($.isFunction(i.target)){var a=i.target.apply(t,[m.val(),i]);$(t).html(a),t.editing=!1,r.apply(t,[t.innerHTML,i]),$.trim($(t).html())||$(t).html(i.placeholder)}else{var l={};l[i.name]=m.val(),l[i.id]=t.id,$.isFunction(i.submitdata)?$.extend(l,i.submitdata.apply(t,[t.revert,i])):$.extend(l,i.submitdata),"PUT"==i.method&&(l._method="put"),$(t).html(i.indicator);var s={type:"POST",data:l,dataType:"html",url:i.target,success:function(e){"html"==s.dataType&&$(t).html(e),t.editing=!1,r.apply(t,[e,i]),$.trim($(t).html())||$(t).html(i.placeholder)},error:function(e){h.apply(f,[i,t,e])}};$.extend(s,i.ajaxoptions),$.ajax(s)}return $(t).attr("title",i.tooltip),!1})}}),this.reset=function(e){this.editing&&!1!==c.apply(e,[i,t])&&($(t).html(t.revert),t.editing=!1,$.trim($(t).html())||$(t).html(i.placeholder),i.tooltip&&$(t).attr("title",i.tooltip))}})}$(this).unbind($(this).data("event.editable")).removeData("disabled.editable").removeData("event.editable")}else $(this).data("disabled.editable",!1);else $(this).data("disabled.editable",!0)},$.editable={types:{defaults:{element:function(){var t=$('<input type="hidden"></input>');return $(this).append(t),t},content:function(t){$(":input:first",this).val(t)},reset:function(t,e){e.reset(this)},buttons:function(t,e){var i=this;if(t.submit){if(t.submit.match(/>$/))var a=$(t.submit).click(function(){"submit"!=a.attr("type")&&i.submit()});else(a=$('<button type="submit" />')).html(t.submit);$(this).append(a)}if(t.cancel){if(t.cancel.match(/>$/))var n=$(t.cancel);else(n=$('<button type="cancel" />')).html(t.cancel);$(this).append(n),$(n).click(function(){if($.isFunction($.editable.types[t.type].reset))var a=$.editable.types[t.type].reset;else a=$.editable.types.defaults.reset;return a.apply(i,[t,e]),!1})}}},text:{element:function(t){var e=$("<input />");return"none"!=t.width&&e.width(t.width),"none"!=t.height&&e.height(t.height),e.attr("autocomplete","off"),$(this).append(e),e}},textarea:{element:function(t){var e=$("<textarea />");return t.rows?e.attr("rows",t.rows):"none"!=t.height&&e.height(t.height),t.cols?e.attr("cols",t.cols):"none"!=t.width&&e.width(t.width),$(this).append(e),e}},select:{element:function(){var t=$("<select />");return $(this).append(t),t},content:function(data,settings,original){if(String==data.constructor)eval("var json = "+data);else var json=data;for(var key in json)if(json.hasOwnProperty(key)&&"selected"!=key){var option=$("<option />").val(key).append(json[key]);$("select",this).append(option)}$("select",this).children().each(function(){$(this).val()!=json.selected&&$(this).text()!=$.trim(original.revert)||$(this).attr("selected","selected")})}}},addInputType:function(t,e){$.editable.types[t]=e}},$.fn.editable.defaults={name:"value",id:"id",type:"text",width:"auto",height:"auto",event:"click.editable",onblur:"cancel",loadtype:"GET",loadtext:"Loading...",placeholder:"Click to edit",loaddata:{},submitdata:{},ajaxoptions:{}}}(jQuery);