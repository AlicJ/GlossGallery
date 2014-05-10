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
//new example format:
//	[
//		url to youtube video or a image,
//		name of the project,
//		the author(s)
//	]

function glossExample(videoPath, name, author){
	this.__videoPath = videoPath;
	this.__name = name;
	this.__author = author;
}

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

$(document).ready(function(){
	//append all examples to html
	var countExample = 0;
	var pageCount = 0;
	var presentPageNum = 0

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

	$(".container").append("<span class=\"contributor\">Buit by \
		<a href=\"https://github.com/AlicJ\">Zichen Jiang</a>,\
		 <a href=\"https://github.com/VCL1995\">Chang Liu</a></span>");

	<!-- prettyPhoto- pop up video -->
	$("a[rel^='prettyPhoto']").prettyPhoto({
	            default_width: 720,
	            default_height: 544,
	            theme: 'pp_default',
	            social_tools: " "
	});
	<!--  -->

	//hide other pages(subcontainers)
	for(i=1; i<=pageCount; i++){
		$(".page"+i).hide();
	}

	//next page
	$(".right").click(function(){
		$(".page"+presentPageNum).hide()

		if(presentPageNum<pageCount){
			presentPageNum ++;
		}else{
			presentPageNum = 0;
		}

		$(".page"+presentPageNum).fadeIn()
	})
	//previous page
	$(".left").click(function(){
		$(".page"+presentPageNum).hide()

		if(presentPageNum!=0){
			presentPageNum --;
		}else{
			presentPageNum = pageCount;
		}

		$(".page"+presentPageNum).fadeIn()
	})

	//hover effect
	$(".example").hover(
		function() {
			exampleId = "#" + $(this).attr('id');
			$(exampleId + " .info").fadeIn("fast");
		}, function() {
			$(exampleId + " .info").fadeOut("fast");
		}
	)

	$(".scroll").fadeTo("fast", 1);

	$(".scroll").hover(
		function(){
			$(this).fadeTo("fast", 0.6);
		},function(){
			$(this).fadeTo("fast", 1);
		}
	)


})