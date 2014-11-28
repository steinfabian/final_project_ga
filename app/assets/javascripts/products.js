// Get token from site to authenticate ajax requests with server
$(document).ready(function () {
	var token = $('meta[name="csrf-token"]').attr('content');
	$.ajaxSetup({
		beforeSend: function (xhr) {
			xhr.setRequestHeader('X-CSRF-Token', token);
		}
	});
});

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

// SHOW SELECTED PART DROPDOWN VALUE
$(function(){
    $(".dropdown-menu").on('click', 'li a', function(){
      $(".btn.dropdown-toggle:first-child").text($(this).text());
      $(".btn.dropdown-toggle:first-child").val($(this).text());
   });
});

// UPDATE IMAGES BASED ON CUSTOMISATION
$(document).ready(function() {
	// DEFINE VARIABLES AND SET DEFAULT VALUES
	var styleTop = "bandeau";
	var styleBottom = "bandeau";
	var printCup = "floral";
	var printStrap = "floral";
	var printBottom = "floral";
	var part;

	var imgTop;
	var imgBottom;

	// DEFINE FUNCTION TO UPDATE THE SOURCE STRING OF THE TOP AND BOTTOM DISPLAY IMAGES BASED ON THE CUSTOMISATION
	var updateImages = function() {
		// DEFINE VARIABLES THAT CREATE THE IMG SOURCE STRING
		// debugger;
		imgTop = "top_" + styleTop + "_cup_" + printCup + "_strap_" + printStrap +".png";
		imgBottom = "bottom_" + styleBottom + "_bottom_" + printBottom +".png";
		$('#top-display').attr('src', '/assets/' + imgTop);	
		$('#bottom-display').attr('src', '/assets/' + imgBottom);
		console.log(imgTop);
		console.log(imgBottom);
	};

	// // DEFINE FUNCTION THAT RESETS THE PART DROPDOWN WHEN NEW STYLE IS SELECTED
	// var resetPart = function() {
	// 	$('#dropdownMenu1').removeAttr('value'); // NOT WORKING YET
	// }

	// DEFINE FUNCTION TO HIDE PRINTS THAT CANNOT BE APPLIED TO A STYLE / PART
	var hidePrints = function() {
	// 	//1. Select all images that have a class print-thumbnail and save in array
		var printImages = $('.print-thumbnail');
		//2. Go through all those images and add a class "hide" if they are not supposed to show up (e.g. when 'bandeau' is selected as style, hide the prints that don't have a class 'bandeau')	
		printImages.each(function (i, image) {
			$(image).removeClass('hide');
			if (
				(styleTop === 'bandeau') && 
				(
					((!$(image).hasClass('bandeau')) && (part === 'Cup')) || 
					((!$(image).hasClass('bandeau')) && (part === 'Strap'))
				) 
				) {
				console.log('image has style ' + styleTop + ', class bandeau and the selected part is Cup or Strap');
				$(image).addClass('hide');
			} else if (
				(styleBottom === 'bandeau') &&
				((!$(image).hasClass('bandeau')) && (part === 'Bottom'))
				) {
				console.log('image has style ' + styleBottom + ', class bandeau and the selected part is Bottom');
				$(image).addClass('hide');
			} else if (
				(styleTop === 'triangle') && 
				(
					((!$(image).hasClass('triangle')) && (part === 'Cup')) || 
					((!$(image).hasClass('triangle')) && (part === 'Strap'))
				) 
				) {
				console.log('image has style ' + styleTop + ', class triangle and the selected part is Cup or Strap');
				$(image).addClass('hide');
			} else if (
				(styleBottom === 'triangle') &&
				((!$(image).hasClass('triangle')) && (part === 'Bottom'))
				) {
				console.log('image has style ' + styleBottom + ', class triangle and the selected part is Bottom');
				$(image).addClass('hide');
			}
		});
	};


	$(document.body)

	// GET THE STYLE OF THE TOP
	.on('click', '#styles-display img.top', function(){
		styleTop = $(this).attr('data-type');
		console.log('a top style ' + styleTop + ' has been clicked');
		if (styleTop === 'triangle') {
			printCup = 'geo';
			printStrap = 'geo';
		} else {
			printCup = 'floral';
			printStrap = 'floral';
		} 
		updateImages();
		// resetPart();
		hidePrints();
		return styleTop;
	})

	// GET THE STYLE OF THE BOTTOM
	.on('click', '#styles-display img.bottom', function(){
		styleBottom = $(this).attr('data-type');
		console.log('a bottom style ' + styleBottom + ' has been clicked');
		if (styleBottom === 'triangle') {
			printBottom = 'geo';
		} else {
			printBottom = 'floral';
		} 
		updateImages();
		// resetPart();
		hidePrints();
		return styleBottom;
	})

	// GET THE PART THAT IS SELECTED FOR CUSTOMISATION (don't really need this now, but maybe later)
	.on('click', '.dropdown-menu li', function(){
		part = $('#dropdownMenu1').val();
		console.log(part + ' li clicked');
		hidePrints();
		return part;
	})

	// GET THE PRINT FOR EACH PART
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

	// DEFINE EVENT HANDLER FOR BUY BUTTON
	$('#buy').on('click', function() {
		console.log('buy button has been clicked');
		// debugger;
	
		// DEFINE DATA COLLECTIONS TO POST TO SERVER
		var productData = [
		  {
		    kind: 'top',
		    image: imgTop
		  },
		  {
		    kind: 'bottom',
		    image: imgBottom
		  }
		];

		var customisationData = {
	  		customisationCup: {
	  			product: imgTop,
	  			part: 'cup',
	  			print: printCup,
	  			style: styleTop
	  		},
	  		customisationStrap: {
	  			product: imgTop,
	  			part: 'strap',
	  			print: printStrap,
	  			style: styleTop,
	  		},
	  		customisationBottom: {
	  			product: imgBottom,
	  			part: 'bottom',
	  			print: printBottom,
	  			style: styleBottom,
	  		}
		};

		var orderData = {
			status: 'pending'
		};


		$.ajax({
			  url: '/orders',
			  type: 'post',
			  data: {
			    product: productData,
			    customisations: customisationData,
			    order: orderData
			  }
		}).done(function (status) {
		  console.log(status);
		  window.location = status.destination;
		});

	});

});

