$(document).on("click",".btn-feed-delete, .btn-comment-delete",function(){var e=$(this);if(e.hasClass("btn-feed-delete")){if(!confirm("\ub2f5\ubcc0\uc744 \uc9c0\uc6b0\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"))return}else if(!confirm("\ub313\uae00\uc744 \uc9c0\uc6b0\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"))return;$.ajax({type:"DELETE",url:e.attr("data-url"),success:function(){e.hasClass("btn-feed-delete")?e.parents(".prism-box").fadeOut(300,function(){$(this).remove()}):e.parents().hasClass("comment")&&e.parents().hasClass("comment-replies")?e.parents(".comment-replies-form").fadeOut(300,function(){$(this).remove()}):e.parents().hasClass("comment")?e.parents(".comment").fadeOut(300,function(){$(this).remove()}):e.parents().hasClass("comment-indent")?e.parents(".comment-indent").fadeOut(300,function(){$(this).remove()}):e.parents(".reply").fadeOut(300,function(){$(this).remove()})},error:function(){console.log("error!")}})});