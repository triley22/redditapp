//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_self

// $(document).ready(function() {
// 	$("upvote").click(function() {
// 		var upvote = $.post("/upvote", {changeBy: 1}, function(dataBack) {

// 			$("#upvote").text(dataBack);
// 		});
// 	});

// 	$("#downvote").click(function() {
// 		var downvote = $.delete("/downvote", {changeBy: 1},
// 			function(dataBack){
// 				$("#downvote").text(dataBack);
// 			});
// 	});
// });


# method"DELETE" 
url: voteUrl

$(function() {
	$(".downvote-link").click(function(event) {
		event.preventDefault();
		var downvoteLinkBtn = $(this);
		var downvoteLink = $(downvoteLinkBtn).attr('href');
	});
})
