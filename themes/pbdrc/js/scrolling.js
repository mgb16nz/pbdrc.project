
$(function () {
	// Function for Device Screen inner height resizing
	$(window).on("load resize", function () {
	  $(".fill-screen").css("height", window.innerHeight);
	});
	
	// Parallax scrolling with stellar.js
	$(window).stellar();

});
