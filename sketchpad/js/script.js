$(document).ready(function () {
    var numRows = parseInt(prompt("Grid size: ", "10"), 10);
    console.log(numRows);
    for (var i = 0; i < numRows; i++){
			$(".container").append("<div class='row'></div>");
		};
    for (var i = 0; i < numRows; i++) {
            $('.row').append('<div class="square"></div>');
        };

    $('.square').on('mouseenter', function(){
        $(this).addClass('highlight');
    })
    $('.square').on('mouseleave', function(){
        //$(this).removeClass('highlight');
    })
    $('#clear').on('click', function(){
        $('.square').removeClass('highlight');
    })
});
