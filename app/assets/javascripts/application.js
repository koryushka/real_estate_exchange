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
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

// $(function(){
// 	var countries = $("#e").data("countries")
// 	var cities = $("#e").data("cities")


// 	var arrayLength = countries.length;

// 	    $("#country").change(function() {
// 		        var val = $(this).find(":selected").text();
//                 	alert(jQuery.inArray( val, countries ) )

// 		})


        
  
// })

$(document).on("click", ".pagination a", function(e){
    e.preventDefault();
    $.getScript(this.href);
});

$(function(){
	$("#searchForm input, #inputForm input").keyup(function(){
		
        $(this).val($(this).val().toLowerCase());
	})
})
