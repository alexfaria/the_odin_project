$(document).ready(function () {
    num = 0;
    while (num > 128 || num < 1) {
        var num = parseInt(prompt("Grid size: ", "10"), 10);
    }

    var option = 1;

    $('#clear').on('click', function(){
        switch (option) {
            case 1:
                $('.square').css({'opacity': '1', 'background': 'black'});
                break;
            case 2:
                $('.square').css({'opacity': '1', 'background': 'black'});
                break;
            case 3:
                $('.square').css({'opacity': '1', 'background': 'white'});
                break;
            default:
                break;
        }

    })
    $('#trailing').on('click', function(){
        option = 1;
        $('.square').css({'opacity': '1', 'background': 'black'});
    })
    $('#grey').on('click', function(){
        option = 2;
        $('.square').css({'opacity': '1', 'background': 'black'});
    })
    $('#random').on('click', function(){
        option = 3;
        $('.square').css({'background': 'white', 'opacity': '1'});
    })

    for (var i = 0; i < num; i++){
			$(".table").append("<tr class='row'></div>");
		};
    for (var i = 0; i < num; i++) {
            $('.row').append('<td class="square"></div>');
        };

    $('.square').on('mouseenter', function(){
        switch (option){
            case 1:
                $(this).css('opacity', '0');
                break;
            case 2:
                var currentOpacity = $(this).css('opacity');
                if(currentOpacity > 0){
                    $(this).css('opacity', currentOpacity - 0.2);
                }
                break;
            case 3:
                var newColor = '#'+(0x1000000+(Math.random())*0xffffff).toString(16).substr(1,6);
                console.log(newColor);
                $(this).css('background', newColor);
                break;
            default:
        }
    })
    $('.square').on('mouseleave', function(){
        switch (option) {
            case 1:
                $(this).fadeTo(500, 1);
                break;
            default:
        }
    })

});
