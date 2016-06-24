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
<body>
<header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
</header>
           
<title>Résultats du test</title>
<script src="./Scripts/jquery.js" type="text/javascript"></script>
<script src="./Scripts/jquery-ui.custom.js" type="text/javascript"></script>
<script src="./Scripts/jquery.cookie.js" type="text/javascript"></script>
<link href="./skin/ArboTest.css" rel="stylesheet" type="text/css" id="skinSheet">
<script src="./Scripts/jquery.dynatree.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
$("#tree").dynatree({
title: "Event samples",
// checkbox: true,
// persist: true,
onQueryActivate: function(activate, node) {
logMsg("onQueryActivate(%o, %o)", activate, node);
// return false;
},
onActivate: function(node) {
logMsg("onActivate(%o)", node);
$("#echoActive").text(node.data.href);
if( node.data.href )
window.open(node.data.href);
},
onDeactivate: function(node) {
logMsg("onDeactivate(%o)", node);
$("#echoActive").text("-");
},
onQuerySelect: function(select, node) {
logMsg("onQuerySelect(%o, %o)", select, node);
if( node.data.isFolder )
return false;
},
onSelect: function(select, node) {
logMsg("onSelect(%o, %o)", node);
var s = node.tree.getSelectedNodes().join(", ");
$("#echoSelected").text(s);
},
onQueryExpand: function(expand, node) {
logMsg("onQueryExpand(%o, %o)", expand, node);
// return false;
},
onExpand: function(expand, node) {
logMsg("onExpand(%o, %o)", expand, node);
},
onLazyRead: function(node) {
logMsg("onLazyRead(%o)", node);
},
onFocus: function(node) {
logMsg("onFocus(%o)", node);
$("#echoFocused").text(node.data.href);
// Auto-activate focused node after 2 seconds
node.scheduleAction("activate", 800);
},
onBlur: function(node) {
logMsg("onBlur(%o)", node);
$("#echoFocused").text("-");
},
onClick: function(node, event) {
logMsg("onClick(%o, %o)", node, event);
if( event.shiftKey && node.isLazy )
alert("ctrl");
//return false;
},
onDblClick: function(node, event) {
logMsg("onDblClick(%o, %o)", node, event);
node.toggleSelect();
},
onKeydown: function(node, event) {
logMsg("onKeydown(%o, %o)", node, event);
switch( event.which ) {
case 32: // [space]
node.toggleSelect();
return false;
}
},
onKeypress: function(node, event) {
logMsg("onKeypress(%o, %o)", node, event);
}
});
});
</script>
</head>
<body>
      <section id="main_content">
		      
					     	
							<div class="content_section" >
							<div class="header_sec">Arborescence des métriques</div>
							<div class="content_sec">
							<div style="text-align: center">
							<a class="buttonExport" style="float: left; width: 200px;" href="Interpclass?idp=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par classes </a>
							<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
							<a class="buttonExport" style="float: right; width: 200px;" href="graphe_carac?idp=<s:property value="id"/>">métriques par projet <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
							<br />
							<br />
							<br />
							</div>
									<h1>
									<div id="tree">
									<ul style="display: none;">
									
									
									<!-- car2 -->
									<li class="folder"><a href="graphe?&param=2&id=<s:property value="id"/>">
									Fiabilité  <s:property value="carac.Reliabilite"/></a>
									
									<ul> 
									      <li class="folder"> Disponibilité </li>
									      <li class="folder"> Tolèrance aux pannes </li>
									      <li class="folder"> Récouvrabilité </li>
									      <li class="folder"><a href="graphe?&param=24&id=<s:property value="id"/>"> Robustnesse <s:property value="sub.Robustness"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           <ul> 
									           		<li class="folder"><a href="graphe?&param=146&id=<s:property value="id"/>">Encapsulation  <s:property value="propriete.encapsulation"/></a>
									          				<ul>
										                       <li><a href="graphe?&param=1461&id=<s:property value="id"/>">AHF  <s:property value="parametres.AHF"/></a></li>
										                       <li><a href="graphe?&param=1462&id=<s:property value="id"/>">MHF  <s:property value="parametres.MHF"/></a></li>
									                       </ul> 
									          		
									          		<li class="folder"><a href="graphe?&param=131&id=<s:property value="id"/>">Héritage  <s:property value="propriete.heritage"/></a>
									                        <ul>
									                      		 <li><a href="graphe?&param=1311&id=<s:property value="id"/>"> NOC <s:property value="parametres.NOC"/></a></li>
									                     		<li><a href="graphe?&param=1312&id=<s:property value="id"/>"> DIT <s:property value="parametres.DIT"/></a></li>
									                   		</ul> 
									             
										            
										            <li class="folder"><a href="graphe?&param=516&id=<s:property value="id"/>">Composition <s:property value="propriete.composition"/></a>
									                    
									             	<li class="folder"><a href="graphe?&param=141&id=<s:property value="id"/>"> Abstraction <s:property value="propriete.abstraction"/></a>
									                     <ul>
									                      	<li><a href="graphe?&param=&id=<s:property value="id"/>">Abstraction  <s:property value="parametres.Abs"/></a></li>
									                     </ul>
									          </ul> 
									       </s:if>
									       </li>
									       </ul>
									       </li>
									   	
									<!-- car3 -->
									
									
									<li class="folder"><a href="graphe?&param=4&id=<s:property value="id"/>">
									
									Efficacité de rendement  <s:property value="carac.Performance"/> </a>
									<ul>
									       <li>Comportement du temps    <s:property value="sub.Comportement_time"/></li>
									       <li class="folder"><a href="graphe?&param=41&id=<s:property value="id"/>">Utilisation des ressources  <s:property value="sub.Utilisation_Ressource"/></a>
									<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									
										<ul> 
										               <li> Complexité Dynamique </li>
										               <li> Taille Dynamique </li>
										               <li> Couplage Dynamique </li>
										              
										</ul>
									</s:if>
									</ul>
									<!-- car4 -->
									
									
									<li class="folder"><a href="graphe?&param=6&id=<s:property value="id"/>">
									
									Sécurité  <s:property value="carac.Securite"/> </a>
									<ul>
										<li class="folder"><a href="graphe?&param=61&id=<s:property value="id"/>"> Confidentialité  <s:property value="sub.Confidentialite"/></a>
											<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									
										<ul> 
										               <li class="folder"><a href="graphe?&param=146&id=<s:property value="id"/>">Encapsulation  <s:property value="propriete.encapsulation"/></a>
									          				<ul>
										                       <li><a href="graphe?&param=1461&id=<s:property value="id"/>">AHF  <s:property value="parametres.AHF"/></a></li>
										                       <li><a href="graphe?&param=1462&id=<s:property value="id"/>">MHF  <s:property value="parametres.MHF"/></a></li>
									                       </ul> 
									          		
									          		<li class="folder"><a href="graphe?&param=131&id=<s:property value="id"/>">Héritage  <s:property value="propriete.heritage"/></a>
									                        <ul>
									                      		 <li><a href="graphe?&param=1311&id=<s:property value="id"/>"> NOC <s:property value="parametres.NOC"/></a></li>
									                     		<li><a href="graphe?&param=1312&id=<s:property value="id"/>"> DIT <s:property value="parametres.DIT"/></a></li>
									                   		</ul> 
									               <li class="folder"><a href="graphe?&param=516&id=<s:property value="id"/>">Composition <s:property value="propriete.composition"/></a>
									                    
									             	<li class="folder"><a href="graphe?&param=141&id=<s:property value="id"/>"> Abstraction <s:property value="propriete.abstraction"/></a>
									                     <ul>
									                      	<li><a href="graphe?&param=&id=<s:property value="id"/>">Abstraction  <s:property value="parametres.Abs"/></a></li>
									                     </ul>
										              
										</ul>
									</s:if>
										
										</li>
						               	<li> Intégrité  <s:property value="sub.Integrite"/></li>
						               	<li> Non-répudiation  <s:property value="sub.Non_repudiation"/></li>
						               	<li> Responsabilité <s:property value="sub.Accountabilite"/></li>
						               	<li> Authenticité  <s:property value="sub.Authenticite"/></li>
						               	<li class="folder"><a href="graphe?&param=62&id=<s:property value="id"/>">Immunité  <s:property value="sub.Immunity"/></a>
						               	<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									
										<ul> 
										               <li class="folder"><a href="graphe?&param=145&id=<s:property value="id"/>">Encapsulation  <s:property value="propriete.encapsulation"/></a>
									          				<ul>
										                       <li><a href="graphe?&param=1461&id=<s:property value="id"/>">AHF  <s:property value="parametres.AHF"/></a></li>
										                       <li><a href="graphe?&param=1462&id=<s:property value="id"/>">MHF  <s:property value="parametres.MHF"/></a></li>
									                       </ul> 
									          		
									          		<li class="folder"><a href="graphe?&param=131&id=<s:property value="id"/>">Héritage  <s:property value="propriete.heritage"/></a>
									                        <ul>
									                      		 <li><a href="graphe?&param=1311&id=<s:property value="id"/>"> NOC <s:property value="parametres.NOC"/></a></li>
									                     		<li><a href="graphe?&param=1312&id=<s:property value="id"/>"> DIT <s:property value="parametres.DIT"/></a></li>
									                   		</ul> 
									               <li class="folder"><a href="graphe?&param=516&id=<s:property value="id"/>">Composition <s:property value="propriete.composition"/></a>
									                    
									             	<li class="folder"><a href="graphe?&param=141&id=<s:property value="id"/>"> Abstraction <s:property value="propriete.abstraction"/></a>
									                     <ul>
									                      	<li><a href="graphe?&param=&id=<s:property value="id"/>">Abstraction  <s:property value="parametres.Abs"/></a></li>
									                     </ul>
										              
										</ul>
									</s:if>
						               	
						               	</li>
									<li> Survivabilité  <s:property value="sub.Survivability"/></li>
									</ul>
										
									<!-- car5 -->
									
									<li class="folder"><a href="graphe?&param=5&id=<s:property value="id"/>">
									
									Maintenabilité  <s:property value="carac.Maintenabilite"/> </a>
									<ul> 
									      <li class="folder"><a href="graphe?&param=51&id=<s:property value="id"/>">Analysabilité  <s:property value="sub.Variabilite_Analyse"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           <ul> 
									           		<li class="folder"><a href="graphe?&param=517&id=<s:property value="id"/>">Couplage  <s:property value="propriete.coupling"/></a>
									          		<li class="folder"><a href="graphe?&param=131&id=<s:property value="id"/>">Héritage  <s:property value="propriete.heritage"/></a>
									                        <ul>
									                      		 <li><a href="graphe?&param=1311&id=<s:property value="id"/>">NOC  <s:property value="parametres.NOC"/></a></li>
									                     		<li><a href="graphe?&param=1312&id=<s:property value="id"/>">DIT  <s:property value="parametres.DIT"/></a></li>
									                   		</ul> 
									             
										           
										            <li class="folder"><a href="graphe?&param=143&id=<s:property value="id"/>">Taille  <s:property value="propriete.nbmethodes"/></a>
									                    <ul>
										                    <li><a href="graphe?&param=5151&id=<s:property value="id"/>">APF  <s:property value="parametres.APF"/></a></li>
										                     <li><a href="graphe?&param=5152&id=<s:property value="id"/>">MPF  <s:property value="parametres.MPF"/></a></li>
									                
									                     	 <li><a href="graphe?&param=1431&id=<s:property value="id"/>">LOC  <s:property value="parametres.LOC"/></a></li>
									                    	  <li><a href="graphe?&param=1432&id=<s:property value="id"/>">CLOC  <s:property value="parametres.CLOC"/></a></li>
									                    	  <li><a href="graphe?&param=1433&id=<s:property value="id"/>">NOM  <s:property value="parametres.NOM"/></a></li>
									                       </ul> 
									                    </li>
									                   <li class="folder"><a href="graphe?&param=231&id=<s:property value="id"/>">Complexité  <s:property value="propriete.complexite"/></a>
									                  		<ul>
											                 	<li><a href="graphe?&param=2311&id=<s:property value="id"/>">WMC  <s:property value="parametres.WMC"/></a></li> 
											                 	<li><a href="graphe?&param=2312&id=<s:property value="id"/>">Cyclomatique <s:property value="parametres.cyclo"/></a></li>
											                </ul>
											                </li>
									          </ul> 
									       </s:if>
									      <li class="folder"><a href="graphe?&param=52&id=<s:property value="id"/>">Changeabilité  <s:property value="sub.Variabilite_Analyse"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           <ul> 
									           		<li class="folder"><a href="graphe?&param=517&id=<s:property value="id"/>">Couplage  <s:property value="propriete.coupling"/></a>
									          		<li class="folder"><a href="graphe?&param=131&id=<s:property value="id"/>">Héritage  <s:property value="propriete.heritage"/></a>
									                        <ul>
									                      		 <li><a href="graphe?&param=1311&id=<s:property value="id"/>">NOC  <s:property value="parametres.NOC"/></a></li>
									                     		<li><a href="graphe?&param=1312&id=<s:property value="id"/>">DIT  <s:property value="parametres.DIT"/></a></li>
									                   		</ul> 
									             
										           
										            <li class="folder"><a href="graphe?&param=143&id=<s:property value="id"/>">Taille  <s:property value="propriete.nbmethodes"/></a>
									                    <ul>
										                    <li><a href="graphe?&param=5151&id=<s:property value="id"/>">APF  <s:property value="parametres.APF"/></a></li>
										                     <li><a href="graphe?&param=5152&id=<s:property value="id"/>">MPF  <s:property value="parametres.MPF"/></a></li>
									                
									                     	 <li><a href="graphe?&param=1431&id=<s:property value="id"/>">LOC  <s:property value="parametres.LOC"/></a></li>
									                    	  <li><a href="graphe?&param=1432&id=<s:property value="id"/>">CLOC  <s:property value="parametres.CLOC"/></a></li>
									                    	  <li><a href="graphe?&param=1433&id=<s:property value="id"/>">NOM  <s:property value="parametres.NOM"/></a></li>
									                       </ul> 
									                    </li>
									                   <li class="folder"><a href="graphe?&param=231&id=<s:property value="id"/>">Complexité  <s:property value="propriete.complexite"/></a>
									                  		<ul>
											                 	<li><a href="graphe?&param=2311&id=<s:property value="id"/>">WMC  <s:property value="parametres.WMC"/></a></li> 
											                 	<li><a href="graphe?&param=2312&id=<s:property value="id"/>">Cyclomatique <s:property value="parametres.cyclo"/></a></li>
											                </ul>
											                </li>
									          </ul> 
									       </s:if>
									       	<li><a href="graphe?&param=53&id=<s:property value="id"/>">Réutilisation  <s:property value="sub.Reusability"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           		<ul>
									              		<li class="folder"><a href="graphe?&param=214&id=<s:property value="id"/>">Cohésion  <s:property value="propriete.cohesion"/></a>
									             		<li class="folder"><a href="graphe?&param=517&id=<s:property value="id"/>">Couplage  <s:property value="propriete.coupling"/></a>
									             		<li class="folder"><a href="graphe?&param=531&id=<s:property value="id"/>">Instabilité  <s:property value="propriete.stabilite"/></a>
									             		<li class="folder"><a href="graphe?&param=551&id=<s:property value="id"/>">Modularite  <s:property value="propriete.modularite"/></a>
									           			
									           		</ul>
									        </s:if>
									        <li><a href="graphe?&param=55&id=<s:property value="id"/>">Modularité  <s:property value="sub.Modularite"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           		<ul>
									              		<li class="folder"><a href="graphe?&param=143&id=<s:property value="id"/>">Taille  <s:property value="propriete.taille"/></a>
									              		<ul>
										                    <li><a href="graphe?&param=5151&id=<s:property value="id"/>">APF  <s:property value="parametres.APF"/></a></li>
										                     <li><a href="graphe?&param=5152&id=<s:property value="id"/>">MPF  <s:property value="parametres.MPF"/></a></li>
									                
									                     	 <li><a href="graphe?&param=1431&id=<s:property value="id"/>">LOC  <s:property value="parametres.LOC"/></a></li>
									                    	  <li><a href="graphe?&param=1432&id=<s:property value="id"/>">CLOC  <s:property value="parametres.CLOC"/></a></li>
									                    	  <li><a href="graphe?&param=1433&id=<s:property value="id"/>">NOM  <s:property value="parametres.NOM"/></a></li>
									                       </ul> 
									              		</li>
									             		<li class="folder"><a href="graphe?&param=517&id=<s:property value="id"/>">Couplage  <s:property value="propriete.coupling"/></a>
									             	
									             		<li class="folder"><a href="graphe?&param=531&id=<s:property value="id"/>">Instabilité  <s:property value="propriete.stabilite"/></a>
									             		<li class="folder"><a href="graphe?&param=551&id=<s:property value="id"/>">Modularite  <s:property value="propriete.modularite"/></a>
									           			
									           		</ul>
									        </s:if>
									        </li>
									        	<li><a href="graphe?&param=56&id=<s:property value="id"/>">Stabilité de modification  <s:property value="sub.Stabilite"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									           		<ul>
									              		<li class="folder"><a href="graphe?&param=214&id=<s:property value="id"/>">Cohésion  <s:property value="propriete.cohesion"/></a>
									             		<li class="folder"><a href="graphe?&param=517&id=<s:property value="id"/>">Couplage  <s:property value="propriete.coupling"/></a>
									             		<li class="folder"><a href="graphe?&param=531&id=<s:property value="id"/>">Instabilité  <s:property value="propriete.stabilite"/></a>
									             		<li class="folder"><a href="graphe?&param=551&id=<s:property value="id"/>">Modularite  <s:property value="propriete.modularite"/></a>
									           			<li class="folder"><a href="graphe?&param=552&id=<s:property value="id"/>">Dependance  <s:property value="propriete.dependence"/></a>
									           			
									           		</ul>
									        </s:if>
									        </li>
									     			<li class="folder"><a href="graphe?&param=54&id=<s:property value="id"/>">Testabilité  <s:property value="sub.Testabilite"/></a>
								 			<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' | #session.statut =='Developpeur'">
									            		<ul>
									             			<li class="folder"><a href="graphe?&param=231&id=<s:property value="id"/>">Complexité  <s:property value="propriete.complexite"/></a>
									                  		<ul>
											                 	<li><a href="graphe?&param=2311&id=<s:property value="id"/>">WMC  <s:property value="parametres.WMC"/></a></li> 
											                 	<li><a href="graphe?&param=2312&id=<s:property value="id"/>">Cyclomatique <s:property value="parametres.cyclo"/></a></li>
											                </ul>
									                  
									           			</ul>
									       </s:if>
									</ul>	
									
									
									<!-- car6 -->
									
									
									</ul>	
									
									
									</ul>
									</div>
									</h1>
							</div>
							</div>
				
</section>
<footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>	
			<script type="text/javascript">
				$(document).ready(function () {
					
					$('#tester').attr('class', 'CmenuActive');
					$('#tester img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#tester').show();
				});
			</script>
</body>
    </html>
    


