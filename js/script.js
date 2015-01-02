var EXAMPLES = [];
// EXAMPLES = [
// 	{
// 		year: 1234,
// 		exps: list of project objecs
// 	},
// 	...
// ]

$(document).ready(function() {
	// prettyPhoto- pop up video


	genProjs();
	sidebarGen();
	setHeight();
});

// EVENT HANDLERS
$(document).on('click', '.proj-li', function(event) {
	event.preventDefault();
	$('#main').hide();
	$('#main').load('project.html',
		function(){
			setHeight();
			$(event.target).parent('ul')
			var curYear = parseInt($(event.target).attr('year'));
			var curExp = $(event.target).attr('id');
			// match the year first
			var result = $.grep(EXAMPLES, function(e) {
				return e.year == curYear;
			});
			// get the first and only result
			result = result[0];
			console.log(result)
			// them match the example project
			var proj = $.grep(result.exps, function(e) {
				return e.name == curExp;
			});
			// get the first and only result
			proj = proj[0];
			// appending project data
			$('#main').find('.name h2').html(proj.name.replace('_',' '));
			$('#main').find('.author p').html(function(){
				var string = 'By ';
				$.each(proj.author, function(index, auth) {
					string += auth;
					if(index != proj.author.length - 1){
						string += ', '
					}
				});
				return string;
			});
			$('#main').find('.demo a').attr({
												rel: 'prettyPhoto',
												href: proj.videoPath
											});
			$('#main').find('.demo img').attr({
												src: proj.imgPath,
												alt: proj.name
											});
			$('#main').find('.file a').attr('href', proj.filePath);
			$("a[rel^='prettyPhoto']").prettyPhoto({
				default_width: 720,
				default_height: 544,
				theme: 'pp_default',
				social_tools: " "
			});
			$('#main').fadeIn();
			console.log(proj)
	});
	
});


// make #sidebar and #main the same height
function setHeight(){
	$('#sidebar, #main').css('height', '');
	var sideHei = $('#sidebar').innerHeight();
	var mainHei = $('#main').innerHeight();
	var maxHei = Math.max(sideHei, mainHei);
	$('#sidebar, #main').innerHeight(maxHei);
}

// make an array of year objects, which contains
// the year digits and the objects that belong to
// that year
function genProjs() {
	// go through the years
	$.each(yearData, function(index, yearDig) {
		var obj = {
			year: yearDig,
			exps: []
		}
		EXAMPLES.push(obj);
	});
	// go through the gloss examples
	$.each(exampleData, function(index, exp) {
		// match the years from EXAMPLE
		$.each(EXAMPLES, function(index, obj) {
			if (exp.year == obj.year) {
				// apparently obj is passed by reference
				obj.exps.push(exp);
			}
		});
	});
}


function sidebarGen(){
	// go through the EXAMPLE list
	$.each(EXAMPLES, function(index, yearOfExp) {
		var list = $('<div></div>')
						.append($('<p></p>')
							.attr('id', 'y'+yearOfExp.year)
							.addClass('year')
							.append(yearOfExp.year)
						)
						.append(
							function() {
								var list = $('<ul></ul>');
								$.each(yearOfExp.exps, function(index, exp) {
									$(list)
										.append($('<li></li>')
												.append(exp.name.replace('_', ' '))
												.attr('id', exp.name)
												.addClass('proj-li')
												.attr({
													id: exp.name,
													year: exp.year
												})
										)
								});
								console.log(list)
								return list;
							}
						)
		console.log(list)
		$('#sidebar').append(list);
	});
}