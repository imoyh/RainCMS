
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="slick, flat, dashboard, bootstrap, admin, template, theme, responsive, fluid, retina">
    <link rel="shortcut icon" href="javascript:;" type="image/png">

    <title>Blank Page</title>

    <!--right slidebar-->
    <link href="/assets/css/slidebars.css" rel="stylesheet">

    <!--switchery-->
    <link href="/assets/js/switchery/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />

    {block name="style"}{/block}

    <!--common style-->
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sticky-header">

    <section>
        <!-- sidebar left start-->
        {include file="_common/_side_nav/main"}
        <!-- sidebar left end-->

        <!-- body content start-->
        <div class="body-content" style="min-height: 1200px;">

            <!-- header section start-->
            {include file="_common/_main_head/main"}
            <!-- header section end-->

            <!-- page head start-->
            {block name="page-head"}{/block}
            <!-- page head end-->

            <!--body wrapper start-->
            <div class="wrapper">
                {block name="wrapper"}{/block}
            </div>
            <!--body wrapper end-->


            <!--footer section start-->
            <footer>
                2015 &copy; SlickLab by VectorLab.
            </footer>
            <!--footer section end-->


            <!-- Right Slidebar start -->
            {include file="_common/_side_right/main"}
            <!-- Right Slidebar end -->

        </div>
        <!-- body content end-->
    </section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="/assets/js/jquery-1.10.2.min.js"></script>
<script src="/assets/js/jquery-migrate.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/modernizr.min.js"></script>

<!--Nice Scroll-->
<script src="/assets/js/jquery.nicescroll.js" type="text/javascript"></script>

<!--right slidebar-->
<script src="/assets/js/slidebars.min.js"></script>

<!--switchery-->
<script src="/assets/js/switchery/switchery.min.js"></script>
<script src="/assets/js/switchery/switchery-init.js"></script>

<!--Sparkline Chart-->
<script src="/assets/js/sparkline/jquery.sparkline.js"></script>
<script src="/assets/js/sparkline/sparkline-init.js"></script>


{block name="script"}{/block}

<!--common scripts for all pages-->
<script src="/assets/js/scripts.js"></script>


<!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					head.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					head.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if(sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer'))
			{
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>
</body>
</html>
