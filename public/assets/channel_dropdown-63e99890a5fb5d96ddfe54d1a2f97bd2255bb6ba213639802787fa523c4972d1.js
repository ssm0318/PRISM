$(document).on("click",".channels-dropdown",function(){$(this).siblings(".channels-dropdown-content").toggle()}),$(document).on("click",".btn-select-all-channels",function(){"\uc804\uccb4\uc120\ud0dd"==$(this).html()?($(this).html("\uc804\uccb4\ud574\uc81c"),$(this).addClass("unselect"),$(this).siblings("input[type=checkbox]").attr("checked",!0)):($(this).html("\uc804\uccb4\uc120\ud0dd"),$(this).removeClass("unselect"),$(this).siblings("input[type=checkbox]").attr("checked",!1))}),$("html").on("click",function(n){var s=$(n.target);s.hasClass("channels-dropdown-content")||s.hasClass("channel-el")||s.hasClass("channels-dropdown")||s.hasClass("btn-select-all-channels")||$(".channels-dropdown-content").hide()});