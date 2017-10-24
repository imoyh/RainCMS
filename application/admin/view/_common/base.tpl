
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
    <link href="/assets/lib/layui/css/layui.css" rel="stylesheet">

    {block name="style"}{/block}

    <!--common style-->
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->

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
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/jquery-migrate.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/modernizr.min.js"></script>
<script src="/assets/lib/layui/layui.all.js"></script>

<!--Nice Scroll-->
<script src="/assets/js/jquery.nicescroll.js" type="text/javascript"></script>

<!--right slidebar-->
<script src="/assets/js/slidebars.min.js"></script>

{block name="script"}{/block}

<!--common scripts for all pages-->
<script src="/assets/js/scripts.js"></script>


</body>
</html>
