function show_likes(e){e.stopImmediatePropagation(),form=$(this),form.parents(".anonymous-comments").length>0?$(document).one("click",".num-of-likes",show_likes):$.ajax({type:"GET",url:form.attr("data-url"),success:function(e){console.log("successed");var o=e.html_content;$("#edit-box").hide(),$("#btn-edit-exit").css("margin-right","35%"),$("#friends-box").show(),$("#edit-background").find("#friends-box").append(o),$("#edit-background").show(),$("body").css("overflow","hidden"),$(document).one("click",".num-of-likes",show_likes)},error:function(){console.log("error!")}})}$(document).on("click",function(){$(".num-of-likes").filter(function(){return"0"!=$(this).text()}).removeClass("zero"),$(".num-of-drawers").filter(function(){return"0"!=$(this).text()}).removeClass("zero"),$(".num-of-reposts").filter(function(){return"0"!=$(this).text()}).removeClass("zero"),$(document).one("click",".num-of-likes",show_likes)});