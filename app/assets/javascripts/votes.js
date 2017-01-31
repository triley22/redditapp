//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_self

$(function() {
	$(".downvote-link").click(function(event) {
		event.preventDefault();
		var downvoteLinkBtn = $(this);
		var downvoteLink = $(downvoteLinkBtn).html(function(i, val) { return val*1-1 });

	});

	$(".upvote-link").click(function(event) {
		event.preventDefault();
		var upvoteLinkBtn = $(this);
		var upvoteLink = $(upvoteLinkBtn).html(function(i, val) { return val*1+1 });

	});
});