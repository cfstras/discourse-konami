(function() {
    var selector = 'img,btn,badge-category,icon';
    var success = function() {
        $(selector).stop().animate(
            {rotation: 360},
            {
                duration: 2000,
                step: function(now, fx) {
                    $(this).css({"transform": "rotate("+now+"deg)"});
                },
                always: function() {
                    $(this).css({"transform": "rotate("+0+"deg)"});
                }

            }
        );
        var d = 200;
        var h = $('html');
        var c = h.css("background-color");
        var colors = [c, "red","orange","yellow","green","blue","indigo","violet"]
        h.css({"transition": "background-color "+d+"ms linear"});
        var q = function() {
            h.css({"background-color": colors.pop()});
            if(colors.length > 0) setTimeout(q,d);
        };
        q();
    }

    new Konami(success);
}).call(this);
