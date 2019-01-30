function like_ajax(element) {
    element.on('click', function(e) {
        var like = $(this)

        var method

            if(like.hasClass("do-like")) {
                method = "POST"
            }
            else {
                method = "DELETE"
            }

            $.ajax({
                type: method,
                url: like.attr("data-url"),
                success: function(data) {
                    const src = like.attr('src')
                    const url = like.attr('data-url')
                    const changed_src = like.attr('data-changed-src')
                    const changed_url = like.attr('data-changed-url')
                    like.attr('src', changed_src)
                    like.attr('data-url', changed_url)
                    like.attr('data-changed-src', src)
                    like.attr('data-changed-url', url)
                    like.toggleClass("do-like")

                    var el
                    el = like.parent().find(".num-of-likes")

                    let like_num = parseInt(el.text());
                    like_num += (!like.hasClass("do-like")) ? 1 : - 1
                    el.text(like_num)

                    if(like_num == 0) {
                        el.addClass("zero")
                    }
                    else {
                        el.removeClass("zero")
                    }
                },
                error: function(data) {
                    console.log("error!")
                }
            })
    })
}

$(document).on('turbolinks:load', function()  {
    $(".num-of-likes").filter(function(index) {
        return $(this).text() != '0'
    }).removeClass("zero")

    like_ajax($(".btn-feed-like"))
    like_ajax($(".btn-comment-like"))
})