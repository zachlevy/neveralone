// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
	console.log("ready");
	$("#checkin_feel_id").change(function() {
		console.log("select change");
		var value = $("#checkin_feel_id option:selected").val();
		console.log("select value: " + value);
		$(".checkin-count").addClass('hidden');
		$("#feel-" + value).removeClass('hidden');
		$(".answer").removeClass("hidden");
	});

});