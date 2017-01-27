// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap

$(document).ready(function() {
	$("upvote").click(function() {
		var upvote = $.post("/upvote", {changeBy: 1}, function(dataBack) {

			$("#upvote").text(dataBack);
		});
	});

	$("#downvote").click(function() {
		var downvote = $.post("/downvote", {changeBy: 1},
			function(dataBack){
				$("#downvote").text(dataBack);
			});
	});
});