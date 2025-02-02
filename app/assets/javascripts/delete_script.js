$(document).on('click', ".btn-feed-delete, .btn-comment-delete", function(e) {
    var delete_btn = $(this)

    if(delete_btn.hasClass("btn-feed-delete")) {
        if(!confirm("답변을 지우시겠습니까?")) {
            return;
        }
    } else {
        if(!confirm("댓글을 지우시겠습니까?")) {
            return;
        }
    } 

    $.ajax({
        type: "DELETE",
        url: delete_btn.attr("data-url"),  
        success: function(data) {
    //      클래스 구조 바뀌면 에러 날 수 있으니 바꾸지 말 것
            if(delete_btn.hasClass("btn-feed-delete")) {
                delete_btn.parents(".prism-box").fadeOut(300, function(){ $(this).remove();});
            } else if(delete_btn.parents().hasClass("comment") && delete_btn.parents().hasClass("comment-replies")){
                delete_btn.parents(".comment-replies-form").fadeOut(300, function(){ $(this).remove();});
            } else if(delete_btn.parents().hasClass("comment")) {
                delete_btn.parents(".comment").fadeOut(300, function(){ $(this).remove();});
            } else if(delete_btn.parents().hasClass("comment-indent")) {
                delete_btn.parents(".comment-indent").fadeOut(300, function(){ $(this).remove();});
            } else { 
                delete_btn.parents(".reply").fadeOut(300, function(){ $(this).remove();});
            }     
        },
        error: function(data) {
            console.log("error!")
        }
    })
})

