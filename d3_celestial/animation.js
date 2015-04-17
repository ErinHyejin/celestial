    // var mainCanvas = document.getElementById("map-canvas");
    //     var mainContext = mainCanvas.getContext('2d');

        // var canvasWidth = mainCanvas.width;
        // var canvasHeight = mainCanvas.height;

        var angle = 0;
        var longitude = 10;
        var latitude = 250;
        var radius = 3;

        var requestAnimationFrame = window.requestAnimationFrame ||
                                    window.mozRequestAnimationFrame ||
                                    window.webkitRequestAnimationFrame ||
                                    window.msRequestAnimationFrame;

        function drawCircle() {
            mainContext.clearRect(0, 0, canvasWidth, canvasHeight);

            // color in the background
            mainContext.fillStyle = "#EEEEEE";
            mainContext.fillRect(0, 0, canvasWidth, canvasHeight);

            // draw the circle
            mainContext.beginPath();

            var marker_radius = 2 + radius * Math.abs(Math.cos(angle));
            mainContext.arc(longitude, latitude, marker_radius, 0, Math.PI * 2, false);
            mainContext.closePath();

            // color in the circle
            mainContext.fillStyle = "#FF0000";
            mainContext.fill();

            angle += Math.PI / 64;

            requestAnimationFrame(drawCircle);
        }
        drawCircle();