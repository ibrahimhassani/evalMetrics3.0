<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<!--[if lt IE 7]>      <html class="no-js sidebar-large lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js sidebar-large lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js sidebar-large lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js sidebar-large" ng-app="myApp"> <!--<![endif]-->

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>

    <script src="Scripts/angular.js"></script>
    <script src="Scripts/angular-route.js"></script>
    <script src="Scripts/Chart.js"></script>
	<script src="Scripts/angular-chart.js"></script>
    <script src="Scripts/app.js"></script>

    <!-- BEGIN META SECTION -->
    <meta charset="utf-8">
    <title>EvalMetrics - Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="" name="description" />
    <meta content="themes-lab" name="author" />
    <!-- END META SECTION -->
    <!-- BEGIN MANDATORY STYLE -->
    <link href="assets/css/icons/icons.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/plugins.min.css" rel="stylesheet">
    <link href="assets/css/style.min.css" rel="stylesheet">
    <!-- END  MANDATORY STYLE -->
    <script src="assets/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body ng-controller="MainCtrl" data-page="panels">
    <!-- BEGIN TOP MENU -->
    <div ng-include="'top_menu.html'" ng-controller="AccueilCtrl"></div>
    <!-- END TOP MENU -->
    <!-- BEGIN WRAPPER -->
    <div id="wrapper">
        <!-- BEGIN MAIN SIDEBAR -->
        <div ng-include="'sidebar.html'"></div>
        <!-- END MAIN SIDEBAR -->
        <!-- BEGIN MAIN CONTENT -->
       	<div ng-view></div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END WRAPPER -->
    <!-- BEGIN MANDATORY SCRIPTS -->
    <script src="assets/plugins/jquery-1.11.js"></script>
    <script src="assets/plugins/jquery-migrate-1.2.1.js"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="assets/plugins/bootstrap-select/bootstrap-select.js"></script>
    <script src="assets/plugins/icheck/icheck.js"></script>
    <script src="assets/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
    <script src="assets/plugins/nprogress/nprogress.js"></script>
    <script src="assets/plugins/charts-sparkline/sparkline.min.js"></script>
    <script src="assets/plugins/breakpoints/breakpoints.js"></script>
    <script src="assets/plugins/numerator/jquery-numerator.js"></script>
    <!-- END MANDATORY SCRIPTS -->
    <!-- PAGE LEVEL SCRIPTS -->
    <script src="assets/plugins/visible/jquery.visible.js"></script>
    <script src="assets/plugins/charts-d3/d3.v3.js"></script>
    <script src="assets/plugins/charts-d3/nv.d3.js"></script>
    <script src="assets/plugins/charts-flot/jquery.flot.js"></script>
    <script src="assets/plugins/charts-flot/jquery.flot.animator.min.js"></script>
    <script src="assets/plugins/charts-flot/jquery.flot.resize.js"></script>
    <script src="assets/plugins/charts-circliful/js/jquery.circliful.min.js"></script>
    <script src="assets/plugins/charts-morris/raphael.min.js"></script>
    <script src="assets/plugins/charts-morris/morris.min.js"></script>
    <script src="assets/js/charts.js"></script>
    <!-- END  PAGE LEVEL SCRIPTS -->
    <script src="assets/js/application.js"></script>
    
</body>

</html>
