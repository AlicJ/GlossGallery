// create the glossExample object
function glossExample(videoPath, name, author){
	this._videoPath = videoPath;
	this._name = name;
	this._author = author;
}
// append one example into the specified markup
function appendExample(example, whereToAppend){
	var icon = $('<div></div>')
					.addClass('example')
					.attr('id', example._name)
					.append($('<div></div>')
						.addClass('picture')
						.append($('<img />')
							.attr({
								src: 'images/'+example._name+'.png',
								alt: example._name
							})
						)
					)
					.append($('<div></div>')
						.addClass('info')
						.append($('<p></p>')
							.addClass('name')
							.append(example._name)
						)
						.append($('<p></p>')
							.addClass('author')
							.append(example._author)
						)
						.append($('<span></span>')
							.addClass('video')
							.append($('<a></a>')
								.attr({
									rel: 'prettyPhoto',
									href: example._videoPath
								})
								.html('&nbsp')
							)
						)
					)
	$(whereToAppend).append(icon);
}
// resize various markup and font size whenever the windoes is resized
function resize() {
	var containerWidth = parseFloat($(".container").css("width"));
	var containerHeight = containerWidth /16*9;
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
		// console.log(example)
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
	// individual example icon on click effect
	$(".example").click(function(){
		var exampleId = "#" + $(this).attr('id');
		var infoDisplayStatus = $(exampleId + " .info").css("display");
		if(infoDisplayStatus == "none"){
			$(exampleId + " .info").fadeIn("fast");
		}else{
			$(exampleId + " .info").fadeOut("fast");
		}
	})
	// individual exmaple icon hover effect
	// $(".example").hover(
	// 	function() {
	// 		var exampleId = "#" + $(this).attr('id');
	// 		$(exampleId + " .info").fadeIn("fast");
	// 	}, function() {
	// 		var exampleId = "#" + $(this).attr('id');
	// 		$(exampleId + " .info").fadeOut("fast");
	// 	}
	// )
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