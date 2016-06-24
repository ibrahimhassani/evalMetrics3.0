<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
<title>Eval Metrics | M&eacute;triques par Classes</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
<script src="./Scripts/jquery-1.8.3.js"></script>
<link href="./StylesSheets/metro/blue/jtable.css" rel="stylesheet" type="text/css" />
<link href="./StylesSheets/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />

<script src="./Scripts/jquery-1.8.3.js" type="text/javascript"></script>
<script src="./Scripts/jquery-ui.custom.js" type="text/javascript"></script>
<script src="./Scripts/jquery.jtable.js" type="text/javascript"></script>
<script src="./Scripts/jquery.jtable.fr.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#StudentTableContainer').jtable({
			title : 'liste des classes',
			paging: true,
	        pageSize: 10,
	        sorting: true, 
            defaultSorting: 'classe ASC',
			actions : {
				listAction : 'listClassAction?idp=<s:property value="idp"/>',
				<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">
				createAction: 'addClassAction?idp=<s:property value="idp"/>',
				deleteAction: 'deleteClassAction',
				</s:if>
				<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' |#session.statut =='Developpeur'">
				updateAction: 'updateClassAction?idp=<s:property value="idp"/>'
				</s:if>
			},
			fields : {
				id : {
					title : 'id',
					key : true,
					list : false,
					create : false,
					edit : false
				},
				idProjet : {
					title : 'id',
					list : false,
					create : false,
					edit : false
				},
				idtest : {
					title : 'Test',
					width : '5%',
					list : true,
					create : false,
					edit : true,
					input: function (data) {
				        if (data.value) {
				            return '<input type="hidden" name="idtest" value="' + data.value + '" />';
				        }
				    }
				},
				classeName : {
					title : 'Nom Classe',
					width : '20%',
					list : true,
					create : true,
					edit : true
				},
				wmc : {
					title : 'WMC',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				wmcInt : {
					title : 'interpretation WMC',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.wmcInt && data.record.wmcInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.wmcInt;
						}
						else if(1 <= data.record.wmcInt && data.record.wmcInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.wmcInt;
						}
						else if(2 <= data.record.wmcInt && data.record.wmcInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.wmcInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.wmcInt;
						}
		           }
				},
				ca : {
					title : 'CA',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				caInt : {
					title : 'interpretation CA',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.caInt && data.record.caInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.caInt;
						}
						else if(1 <= data.record.caInt && data.record.caInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.caInt;
						}
						else if(2 <= data.record.caInt && data.record.caInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.caInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.caInt;
						}
		           }
				},
				ce : {
					title : 'CE',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				ceInt : {
					title : 'interpretation CE',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.ceInt && data.record.ceInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.ceInt;
						}
						else if(1 <= data.record.ceInt && data.record.ceInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.ceInt;
						}
						else if(2 <= data.record.ceInt && data.record.ceInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.ceInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.ceInt;
						}
		           }
				},
				instab : {
					title : 'I',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				instabInt : {
					title : 'interpretation I',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.instabInt  && data.record.instabInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.instabInt;
						}
						else if(1 <= data.record.instabInt && data.record.instabInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.instabInt;
						}
						else if(2 <= data.record.instabInt && data.record.instabInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.instabInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.instabInt;
						}
		           }
				},
				d : {
					title : 'Distance',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				nom : {
					title : 'NOM',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				nomInt : {
					title : 'interpretation NOM',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.nomInt  && data.record.nomInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.nomInt;
						}
						else if(1 <= data.record.nomInt && data.record.nomInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.nomInt;
						}
						else if(2 <= data.record.nomInt && data.record.nomInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.nomInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.nomInt;
						}
		           }
				},
				dit : {
					title : 'DIT',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				ditInt : {
					title : 'interpretation DIT',
					width : '10%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.ditInt  && data.record.ditInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.ditInt;
						}
						else if(1 <= data.record.ditInt && data.record.ditInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.ditInt;
						}
						else if(2 <= data.record.ditInt && data.record.ditInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.ditInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.ditInt;
						}
		           }
				},
				date : {
					title : 'date',
					width : '24%',
					type: 'date',
					list : true,
					create : false,
					edit : false,
				}
			}
		});
		$('#StudentTableContainer').jtable('load');
	});
</script>

<title>Evolution du projet</title>
</head>
<body>
	<header class="header">
		<jsp:include page="./../header/header.jsp"></jsp:include>
		<jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
	</header>
	<section id="main_content">
		<section class="content_section">
			<div class="header_sec">m&eacute;triques et interpr&eacute;tation par classes</div>
			<div class="content_sec">
				<div style="text-align: center">
							<a class="buttonExport" style="float: left; width: 210px;" href="Interpmethod?idp=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par m&eacutesthodes </a>
							<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
							<a class="buttonExport" style="float: right; width: 200px;" href="graphe_carac?idp=<s:property value="idp"/>">métriques par projet <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
							<br />
							<br />
							<br />
				</div>
			<div style=" text-align: center;">
			<h3>Analyse  des m&eacute;triques des classes</h3>
		
		<div id="StudentTableContainer"></div><br/>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> WMC :</span> La somme de la complexité cyclomatique de McCabe pour toutes les méthodes de la classe.</p>
		
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> CA :</span> Le nombre de classes hors d'une package qui dépendent d'une classe dans le package.</p>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> CE : </span> Le nombre de classes dans un package qui dépendent d'une classe d'un autre package.</p>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> Instability (RMI) :</span> Ce nombre vous donnera l'instabilité de votre projet. C'est-à-dire les dépendances entre les paquets.</p>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> Depth of Inheritance Tree (DIT) :</span> Distance jusqu'à la classe Object dans la hiérarchie d'héritage.</p>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> Number of Methods (NOM) :</span> Le nombre de méthodes dans l'élément sélectionné.</p>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> Distance (RMD) :</span> Ce nombre devrait être petit, proche de zéro pour indiquer une bonne conception des parquets.</p>
		</div>	

		        
			</div>
		</section>
	</section>
	<footer>
		<jsp:include page="./../footer/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript">
				$(document).ready(function () {
					
					$('#Interp').attr('class', 'CmenuActive');
					$('#Interp img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#Interp').show();
				});
			</script>
	<script type="text/javascript">
			function selectAll(){
				for (var i=0;i<fileUpload_users_chosen_ID.options.length;i++) {
					fileUpload_users_chosen_ID.options[i].selected = true;
				}
			}
			</script>
</body>
</html>

