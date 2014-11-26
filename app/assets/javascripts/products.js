// MAKE TABS TOGGLEABLE
$(document).ready(function() {
	$('#styles-tab').on('click', function() {
		$('#styles-display').toggleClass('hide');
		$('#prints-display').toggleClass('hide');
	});
	$('#prints-tab').on('click', function() {
		$('#prints-display').toggleClass('hide');
		$('#styles-display').toggleClass('hide');
	});
});


$(document).ready(function() {
	//DEFINE VARIABLES AND SET DEFAULT VALUES
	var styleTop = "bandeau";
	var styleBottom = "bandeau";
	var printCup = "retro";
	var printStrap = "floral";
	var printBottom = "floral";
	var part = '';

	//DEFINE VARIABLES THAT CREATE THE IMG SOURCE STRING
	var imgTop = "/assets/top_" + styleTop + "_cup_" + printCup + "_strap_" + printStrap +".png";
	var imgBottom = "/assets/bottom_" + styleBottom + "_bottom_" + printBottom +".png";

	//DEFINE FUNCTION TO UPDATE THE SOURCE STRING OF THE TOP AND BOTTOM DISPLAY IMAGES BASED ON THE CUSTOMISATION
	var updateImages = function() {
		$('#top-display').attr('src', imgTop);	
		$('#bottom-display').attr('src', imgBottom);
		console.log(imgTop);
		console.log(imgBottom);
	};

	$(document.body)

	//GET THE STYLE OF THE TOP
	.on('click', '#styles-display img.top', function(){
		styleTop = $(this).attr('data-type');
		console.log('a top style ' + styleTop + ' has been clicked');
		updateImages();
		return styleTop;
	})

	//GET THE STYLE OF THE BOTTOM
	.on('click', '#styles-display img.bottom', function(){
		styleBottom = $(this).attr('data-type');
		console.log('a bottom style ' + styleBottom + ' has been clicked');
		updateImages();
		return styleBottom;
	})

	//GET THE PART THAT IS SELECTED FOR CUSTOMISATION (don't really need this now, but maybe later)
	.on('click', '.dropdown-menu li', function(){
		part = $('#dropdownMenu1').val();
		console.log(part + ' li clicked');
		return part;
	})

	//GET THE PRINT FOR EACH PART
	.on('click', '.print', function(){
		if ($('#dropdownMenu1').val() === "Cup") {
			printCup = $(this).attr('data-type');
			console.log(part + ' is selected with print ' + printCup + ' for style ' + styleTop);	
			updateImages();
			return printCup;
		} else if ($('#dropdownMenu1').val() === "Strap") {
			printStrap = $(this).attr('data-type');
			console.log(part + ' is selected with print ' + printStrap + ' for style ' + styleTop);	
			updateImages();
			return printStrap;
		} else if ($('#dropdownMenu1').val() === "Bottom") {
			printBottom = $(this).attr('data-type');
			console.log(part + ' is selected with print ' + printBottom + ' for style ' + styleBottom);
			updateImages();
			return printBottom;
		} else if ($('#dropdownMenu1').val() === "") {
			console.log("First select a part");
			alert('Which part to you want to apply the print to? Select the part from the drop down menu');
		}
	})
});

//SHOW SELECTED PART DROPDOWN VALUE
$(function(){
    $(".dropdown-menu").on('click', 'li a', function(){
      $(".btn.dropdown-toggle:first-child").text($(this).text());
      $(".btn.dropdown-toggle:first-child").val($(this).text());
   });
});

		// switch ($(this)) {
		// 	case $(this).hasClass('style') && $(this).hasClass('top'):
		// 		styleTop = $(this).attr('data-type');
		// 		console.log($(this).attr('data-type'));
		// 	case $(this).hasClass('style') && $(this).hasClass('bottom'):
		// 		styleBottom = $(this).attr('data-type');
		// 		console.log($(this).attr('data-type'));
		// 	default:
		// 		console.log('default');


		// .on('click', '.customisation-display img', function() {

		// 	if ($(this).hasClass('style') && $(this).hasClass('top')) {
		// 		styleTop = $(this).attr('data-type');
		// 		console.log($(this).attr('data-type'));
		// 	};

		// 	if ($(this).hasClass('style') && $(this).hasClass('bottom')) {
		// 		styleBottom = $(this).attr('data-type');
		// 		console.log($(this).attr('data-type'));
		// 	};

		// 	if ($(this).hasClass('print')) {
		// 		printCup = $(this).attr('data-type');
		// 		printStrap = $(this).attr('data-type');
		// 		printBottom = $(this).attr('data-type');
		// 	};


		// 	})

// 	$(document).ready(function () {
// 		$('#customiser-tabs a').click(function (e) {
// 		  e.preventDefault();
// 		  $('#customiser-tabs a[href="#styles-display"]').tab('show'); // Select tab by name
// 		  $('#customiser-tabs a[href="#prints-display"]').tab('show'); // Select tab by name
// 		});
// 	    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
// 		  e.target; // newly activated tab
// 		  e.relatedTarget; // previous active tab
// 		});
// 	});