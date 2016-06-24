<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>  
        <title>Eval Metrics |Ajout des projets</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
        <script src="./Scripts/jquery-1.8.3.js"></script>
		<script src="./Scripts/jquery.js" type="text/javascript"></script>
		<script src="./Scripts/jquery-ui.min.js" type="text/javascript"></script>
		<script src="./Scripts/jquery.cookie.js" type="text/javascript"></script>
		<link href="./skin/ui.dynatree.css" rel="stylesheet" type="text/css" id="skinSheet">
		<script src="./Scripts/jquery.dynatree.js" type="text/javascript"></script>
		<script src="./Scripts/treeScript.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="./StylesSheets/jquery-ui.css">
</head>
<script type='text/javascript'>
$(window).load(function(){
var $menuButton = $("#menuButton");
var $menuElement = $("#menuElement");
var $menuElement2 = $("#menuElement2");
var $menuElement3 = $("#menuElement3");

$menuButton.button({
    icons: {
        secondary: "ui-icon-triangle-1-s"
    }
})
    .click(function (event) {
    $(document).one("click", function () {
        $menuElement.css("visibility", "hidden");
    });
	
    if($menuElement.css('visibility') == 'visible'){
		$menuElement.css("visibility", "hidden");
		event.stopPropagation();
	}
	else{
    $menuElement.css("visibility", "visible");
    $menuElement2.css("visibility", "hidden");
    $menuElement3.css("visibility", "hidden");
    event.stopPropagation();
	}
});

$menuElement
    .menu({
    select: function (event, ui) {
        $menuElement.css("visibility", "hidden");
    }
})
    .css("visibility", "hidden")
    .position({
    my: "left top",
    at: "right top",
    of: $menuButton
});
});//]]>  

</script>

<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
var $menuButton2 = $("#menuButton2");
var $menuElement2 = $("#menuElement2");
var $menuElement = $("#menuElement");
var $menuElement3 = $("#menuElement3");

$menuButton2.button({
    icons: {
        secondary: "ui-icon-triangle-1-s"
    }
})
    .click(function (event) {
    $(document).one("click", function () {
        $menuElement2.css("visibility", "hidden");
    });
    
    if($menuElement2.css('visibility') == 'visible'){
		$menuElement2.css("visibility", "hidden");
		event.stopPropagation();
	}
	else{
    $menuElement2.css("visibility", "visible");
    $menuElement.css("visibility", "hidden");
    $menuElement3.css("visibility", "hidden");
    event.stopPropagation();
	}
});

$menuElement2
    .menu({
    select: function (event, ui) {
        $menuElement2.css("visibility", "hidden");
    }
})
    .css("visibility", "hidden")
    .position({
    my: "left top",
    at: "right top",
    of: $menuButton2
});
});//]]>  

</script>
<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
var $menuButton3 = $("#menuButton3");
var $menuElement3 = $("#menuElement3");
var $menuElement = $("#menuElement");
var $menuElement2 = $("#menuElement2");

$menuButton3.button({
    icons: {
        secondary: "ui-icon-triangle-1-s"
    }
})
    .click(function (event) {
    $(document).one("click", function () {
        $menuElement3.css("visibility", "hidden");
    });
	if($menuElement3.css('visibility') == 'visible'){
		$menuElement3.css("visibility", "hidden");
		event.stopPropagation();
	}
	else{
    $menuElement3.css("visibility", "visible");
    $menuElement.css("visibility", "hidden");
    $menuElement2.css("visibility", "hidden");
    event.stopPropagation();
    }
});

$menuElement3
    .menu({
    select: function (event, ui) {
        $menuElement3.css("visibility", "hidden");
    }
})
    .css("visibility", "hidden")
    .position({
    my: "left top",
    at: "right top",
    of: $menuButton3
});
});//]]>  

</script>
<body>
<header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
</header>
<s:set var="myVar">0</s:set>
	<section id="main_content">
			 <section id="content_section_left">
					     <div class="header_sec" style="font-size: 19px;">Arborescence du projet</div>
						 <div class="content_sec">
							<div id="tree">
							<ul style="display: none;">
								<s:iterator var="pack" value="packages">
										<s:if test="#pack.packName == 0">
											<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
												<li><a href="testerjava?&monjava=<s:property value="#pack.javaPath"/>&id=<s:property value="id"/>"><s:property value="#pack.javaName"/></a></li>
											</s:if>
										</s:if>
										<s:else>
											<s:if test="#myVar == 0">
											
												<s:set var="myVar">1</s:set>
											</s:if>
											<s:else>
												</ul>
											</s:else>
												<li class="folder"><s:property value="#pack.packName"/>
													<ul>
													<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
														<li><a href="testerjava?&monjava=<s:property value="#pack.javaPath"/>&id=<s:property value="id" />"><s:property value="#pack.javaName"/></a></li>
													</s:if>
										</s:else>
								</s:iterator>
								</ul>
							</div>
			</section>
		<section id="content_section_right">
					     <div class="header_sec"></div>
						<div class="content_sec">
							<span class="rapp_infos">
						
									<h3 style="color: #ff5e3c;">Rapport des tests :</h3>
									<img alt="Tester" src="./Images/puce.png">&nbsp;&nbsp;&nbsp;Nom du projet :<s:property value="report.nom"/><br/><br/>
								    <img alt="Tester" src="./Images/puce.png">&nbsp;&nbsp;&nbsp;Date de l'ajout du projet : <s:property value="report.date_ajout"/><br/><br/>
									<img alt="Tester" src="./Images/puce.png">&nbsp;&nbsp;&nbsp;Date du dernier test  :  
										<s:if test="report.nbprojets<1 ">
	                             				aucun test n'a été effectué !
	                                 	</s:if>  <s:property value="report.date_dernier"/><br/>	<br/>
				                
					    			<img alt="Tester" src="./Images/puce.png">&nbsp;&nbsp;&nbsp;Nombre de tests effectués   <s:property value="report.nbprojets"/>
						 			
						 			</span>
							     <span class="rapp_buttons">
							     <!-- seul admin, chef de projet, audit peuvent faire des test -->
								 <s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Audit'">
									   <a class="rapp_buttonelt" href="testerProjet?id=<s:property value="id"/>">Tester</a>
								</s:if>
								</br>
								
							     <s:if test="report.nbprojets != 0 "> <!-- si aucun test n'a était effectué on ne peut exporter les résultats des tests -->
									   
                                       <button id="menuButton" class="rapp_buttonelt">Visualiser</button>
										<ul style="z-index: 9999999; position: absolute;" id="menuElement">
											<li><a href="afficherTest?id=<s:property value="id"/>">M&eacute;triques</a></li>
											<li><a href="pattern?&id=<s:property value="id"/>">Design Patterns</a></li>
										</ul>
                                       </br>
                                       
                                       
                                       <button id="menuButton2" class="rapp_buttonelt">R&eacute;sultats</button>
										<ul style="z-index: 9999999; position: absolute;" id="menuElement2">
											<li><a href="Interpmethod?&idp=<s:property value="id"/>">M&eacute;triques par m&eacute;thode</a></li>
											<li><a href="Interpclass?&idp=<s:property value="id"/>">M&eacute;triques par classe</a></li>
											<li><a href="graphe_carac?&idp=<s:property value="id"/>">M&eacute;triques par projet</a></li>
										</ul>
										</br>
										<button id="menuButton3" class="rapp_buttonelt">Statistiques</button>
										<ul style="z-index: 9999999; position: absolute;" id="menuElement3">
											<li><a href="stats?&id=<s:property value="id"/>">Statistiques</a></li>
											<li><a href="graphe_histo?id=<s:property value="id"/>">graphes</a></li>
										</ul>
										</br>
							     <s:if test="report.nbprojets != 0 "> <!-- si aucun test n'a était effectué on ne peut exporter les résultats des tests -->

									  <a class="rapp_buttonelt" href="metricsExportXls?idProjet=<s:property value="%{id}"/>">Exporter</a>
                                       </br>
								 	</s:if>
									</s:if>
									 <!-- seul admin, chef de projet peuvent paramétrer -->
								 <s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">
                                       <a class="rapp_buttonelt" href="getSpecificPara?id=<s:property value="id"/>"> Param&eacute;trage</a>									
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 </s:if>
								 
								</span>
								
						 </div>
				
	</section>
	</section>
	
</section>
<footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>
<script type="text/javascript">
				$(document).ready(function () {
					//cmenu
					$('.CmenuActive').attr('class', 'CmenuInactive');
					$('#projet').attr('class', 'CmenuActive');
					$('#projet img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#projet').show();

				});
			</script>
</body>
</html>