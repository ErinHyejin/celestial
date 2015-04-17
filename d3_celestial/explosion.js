<!DOCTYPE html >
<html >
  <head>
    <meta http-equiv="X-UA-Compatible" content="chrome=1" />
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <title>d3 x3dom demo</title>
    <script type="text/javascript" src="http://mbostock.github.com/d3/d3.js"></script>
    <script type="text/javascript" src="http://x3dom.org/x3dom/example/x3dom.js"></script>
  </head>
  <body>
    <script>

    function sample() {
      var bestCandidate, bestDistance = 0;
      for (var i = 0; i < numCandidates; ++i) {
        var c = [Math.random() * width, Math.random() * height],
            d = distance(findClosest(samples, c), c);
        if (d > bestDistance) {
          bestDistance = d;
          bestCandidate = c;
        }
      }
      return bestCandidate;
    }
sample();
<body>
<script>
</html>
