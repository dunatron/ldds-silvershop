<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <% base_tag %>
    <title></title>
    $MetaTags
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="#ee3e8b">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

    <link rel="stylesheet" href="$ThemeDir/css/lddsmenu.css">
    <link rel="stylesheet" href="$ThemeDir/css/base-styles.css">
    <link rel="stylesheet" href="$ThemeDir/css/homepage.css">

    <!-- Google Analytics -->
    <script>
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-67822693-4']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <!-- End Google Analytics -->


</head>
<body class="$ClassName.LowerCase $Title">
    <% include Nav %>
<div class="container-fluid" id="site-wrapper">

    <% include Header %>
    <div class="buffer" style="height: 60px;"></div>

    <div class="site-content-wrapper container">
        $Layout
        $Form
    </div>
    <% include Footer %>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.2/TweenLite.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.2/plugins/CSSPlugin.min.js"></script>
<script src="$ThemeDir/js/main.js"></script>

<script src="$ThemeDir/js/googleajax.js"></script>
<script src="$ThemeDir/js/bootstrap3.1.0.js"></script>
<script src="$ThemeDir/js/menu.js"></script>
<script src="$ThemeDir/js/jssor/jssor.slider.mini.js"></script>
<script src="$ThemeDir/js/vertical-slider.js"></script>



</body>
</html>
