//If more examples/projects are to be added, please add them at the end of 
// exampleData
var exampleData = [
	[
		"images/HauntedHouse.png",
		"HauntedHouse",
		"Mackenzie Campbell<br/>Manaar Hyder<br/>Maya Ramamurthy"
	],
	[
		"http://youtu.be/N49IZIFam4A",
		"MovingStar",
		"Ahmed Khan<br/>MATTHEW PRIOR-COXHEAD"
	],
	[
		"http://youtu.be/I0koyAlEcRk",
		"Parabolic",
		"Zichen Jiang<br/>Yi Wang"
	],
	[
		"http://youtu.be/yhava85k0mU",
		"SolarSystem",
		"Trevor Rae<br/>Paul Warnick<br/>James Zhu<br/>Katrine Rachitsky"
	],
	[
		"http://youtu.be/Q-VMyfBazeA",
		"Stare",
		"Mingfei Jiang"
	],
	[
		"http://youtu.be/3Vwze16yHSM",
		"Waves",
		"Sergio Cosman Agraz"
	],
	[
		"http://youtu.be/QeDUpSdWP1w",
		"Windmills",
		"Yash Patel<br/>Chinthujan Nandakumar"
	],
	[
		"http://youtu.be/9OeeomwC6LY",
		"Windows",
		"Chang Liu<br/>Xiaomin Bai<br/>Yu Wang"
	]

]
// New example format:
//	[
//		url to youtube video or a image,
//		name of the project,
//		the author(s)
//	]
// Moreover, the sample picture of each example is named
// EXACTLY the same as the name of the example, with png format
// and is put under 'images' folder.
// The pictures are all squares, i.e., the width and height are
// the same, and should be bigger than 200px * 200px for better
// performance on various devices.

// create the glossExample object
function glossExample(videoPath, name, author){
	this.__videoPath = videoPath;
	this.__name = name;
	this.__author = author;
}
// append one example into the specified markup
function appendExample(example, whereToAppend){
	$(whereToAppend).append("\
		<div class=\"example\" id=\"" + example.__name + "\">\
			<div class=\"picture\">\
				<img src=\"images/" + example.__name + ".png\" />\
			</div>\
			<div class=\"info\">\
				<p class=\"name\">" + example.__name + "</p>\
				<p class=\"author\">" + example.__author + "</p>\
				<span class=\"video\"><a rel=\"prettyPhoto\" href=\"" + example.__videoPath + "\">&nbsp</a></span>\
			</div>\
		</div>"
	)
}
// resize various markup and font size whenever the windoes is resized
function resize() {
	var containerWidth = parseFloat($(".container").css("width"));
	var containerHeight = containerWidth /16*10;
	var exampleWidth = parseFloat($(".example").css("width"));
	var infoPadding = parseFloat($(".info").css("padding-top"));
	var infoWidth = parseFloat(exampleWidth) * (1-infoPadding/100);
	var arrowSize = containerHeight * 0.12
	var fontSize = arrowSize * 0.25
	var scrollHeight = (containerHeight + arrowSize)/2;
	var scrollPadding = containerHeight - scrollHeight;
	$("html").css({"font-size": fontSize})
	$(".container").css({height: containerHeight})
	$(".example").css({height: exampleWidth});
	$(".info").css({bottom: exampleWidth});
	$(".scroll").css({height: scrollHeight, "padding-top": scrollPadding, "font-size": arrowSize});
}

$(document).ready(function(){
	//append all examples to html
	var countExample = 0;
	var pageCount = 0;
	var presentPageNum = 0
	// output all the examples into html page
	for(var i=0; i<exampleData.length; i++){
		//if maximum of 6 examples is reached, cerate aother container
		if(countExample % 6 == 0){
			$(".container").append("<div class=\"subcontainer page" + (countExample/6) + "\"></div>");
			pageCount = countExample/6;
		}
		//create the example object
		var example = new glossExample(exampleData[i][0],exampleData[i][1],exampleData[i][2]);
		//var example = new glossExample(" ","Example"+(i+1),"Author"+(i+1));
		appendExample(example, ".page" + String(pageCount));
		console.log(example)
		countExample ++;
	}
	// add credit
	$(".container").append("<span class=\"contributor\">Buit by \
		<a href=\"https://github.com/AlicJ\">Zichen Jiang</a>,\
		 <a href=\"https://github.com/VCL1995\">Chang Liu</a></span>");
	// assign dimentison to various markups
	resize();
	//hide other pages(subcontainers)
	for(i=1; i<=pageCount; i++){
		$(".page"+i).hide();
	}
	// prettyPhoto- pop up video
	$("a[rel^='prettyPhoto']").prettyPhoto({
	            default_width: 720,
	            default_height: 544,
	            theme: 'pp_default',
	            social_tools: " "
	});


	// STARTING HEAR ARE ALL JQUERY EVENT HANDLERS
	//next page button
	$(".right").click(function(){
		$(".page"+presentPageNum).hide()
		if(presentPageNum<pageCount){
			presentPageNum ++;
		}else{
			presentPageNum = 0;
		}
		$(".page"+presentPageNum).fadeIn();
	})
	//previous page button
	$(".left").click(function(){
		$(".page"+presentPageNum).hide();

		if(presentPageNum!=0){
			presentPageNum --;
		}else{
			presentPageNum = pageCount;
		}

		$(".page"+presentPageNum).fadeIn();
	})
	// individual exmaple icon hover effect
	$(".example").hover(
		function() {
			exampleId = "#" + $(this).attr('id');
			$(exampleId + " .info").fadeIn("fast");
		}, function() {
			$(exampleId + " .info").fadeOut("fast");
		}
	)
	// page button hover effect
	$(".scroll").hover(
		function(){
			$(this).fadeTo("fast", 0.6);
		},function(){
			$(this).fadeTo("fast", 1);
		}
	)
	// resize most markups, including padding and font size for some
	// whenever the width of the window is changed
	$(window).bind("resize", function(){
		resize()
	})
})