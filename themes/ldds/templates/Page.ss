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
    <title>LD - $Title</title>
    $MetaTags
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="#ee3e8b">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="$ThemeDir/css/base-ajax.css">
    <link rel="stylesheet" href="$ThemeDir/css/base-styles.css">
    <link rel="stylesheet" href="$ThemeDir/css/homepage.css">

    <!-- Google Analytics -->
   <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-67822693-10', 'auto');
  ga('send', 'pageview');

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
<script src="$ThemeDir/js/googleajax.js"></script>
<script src="$ThemeDir/js/bootstrap3.1.0.js"></script>
<script src="$ThemeDir/js/menu.js"></script>
<script src="$ThemeDir/js/ajax-message.js"></script>
<script src="$ThemeDir/js/vertical-slider.js"></script>
<script src="$ThemeDir/js/base-ajax.js"></script>
<script src="$ThemeDir/js/billing-same-as-shipping.js"></script>
<script src="$ThemeDir/js/add-to-cart-message.js"></script>
<script src="$ThemeDir/js/black-bg.js"></script>

</body>
</html>
