<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
<title>Eval Metrics | M&eacute;triques par M&eacute;thodes</title>
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
			title : 'liste des méthodes',
			paging: true,
	        pageSize: 10,
	        sorting: true, 
            defaultSorting: 'classe ASC',
			actions : {
				listAction : 'listMethodAction?idp=<s:property value="idp"/>',
				<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">			
				createAction: 'addMethodAction?idp=<s:property value="idp"/>',
				deleteAction: 'deleteMethodAction',
				</s:if>
				<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' |#session.statut =='Developpeur'">
				updateAction: 'updateMethodAction?idp=<s:property value="idp"/>'
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
				classe : {
					title : 'Nom de la Classe',
					width : '20%',
					list : true,
					create : true,
					edit : true
				},
				type : {
					title : 'type de méthode',
					width : '20%',
					list : true,
					create : true,
					edit : true
				},
				namemethode : {
					title : 'Nom de méthode',
					width : '15%',
					list : true,
					create : true,
					edit : true
				},
				sloc : {
					title : 'Sloc',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				slocInt : {
					title : 'interpretation SLOC',
					width : '5%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.slocInt && data.record.slocInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.slocInt;
						}
						else if(1 <= data.record.slocInt && data.record.slocInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.slocInt;
						}
						else if(2 <= data.record.slocInt && data.record.slocInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.slocInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.slocInt;
						}
		           }
				},
				vg : {
					title : 'V(G)',
					width : '3%',
					list : true,
					create : true,
					edit : true
				},
				vgInt : {
					title : 'interpretation V(G)',
					width : '5%',
					list : true,
					create : false,
					edit : false,
					sorting: false,
					display: function (data) {
						if(0 <= data.record.vgInt && data.record.vgInt < 1 ){
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '+data.record.vgInt;
						}
						else if(1 <= data.record.vgInt && data.record.vgInt < 2){
							return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '+data.record.vgInt;
						}
						else if(2 <= data.record.vgInt && data.record.vgInt <= 3){
							return '<img style="vertical-align: middle;" src="./Images/good.png" /> '+data.record.vgInt;
						}
						else{
							return '<img style="vertical-align: middle;" src="./Images/bad.png" />'+data.record.vgInt;
						}
		           }
				},
				date : {
					title : 'date du test ',
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
			<div class="header_sec">m&eacute;triques et interpr&eacute;tation par m&eacute;thodes </div>
			<div class="content_sec">
			
				<div style="text-align: center">
							<a class="buttonExport" style="float: left; width: 200px;" href="Interpclass?idp=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par classes </a>
							<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
							<a class="buttonExport" style="float: right; width: 200px;" href="graphe_carac?idp=<s:property value="idp"/>">métriques par projet <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
							<br />
							<br />
							<br />
				</div>
		<div style="text-align: center;">
		<h3>Analyse  des m&eacute;triques des m&eacute;thodes</h3>
		
		<div id="StudentTableContainer"></div><br/>
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> SLOC :</span> Le nombre total de lignes de codes dans la méthode.</p>
		
		<p style="text-align: left;font-size: 14px;"><span style="color:blue;font-weight: bolder;"> VG (McCabe Cyclomatic Complexity) :</span> La complexité cyclomatique d'une méthode. C'est-à-dire le nombre de chemins possibles à l'intérieur d'une méthode, le nombre de chemin est incrémenté par chaque boucle, condition, opérateur ternaire.</p><br/>
		
		
		</div><br/>
		
<%-- 			<h2>Tableau des Valeurs</h2>
<table class="listUserTable">
	<thead>
<tr>
	 <th scope="col"> Num Test</th>
    <th scope="col"> Nom de la Classe</th>
    <th scope="col">type de m&eacute;thode</th>
    <th scope="col">Nom</th>
    <th scope="col">Sloc</th>
     <th scope="col">interpretation SLOC</th>
     <th scope="col">V(G)</th>
     <th scope="col">interpretation V(G)</th>
     <th scope="col">Date Test</th>
  
</tr>
  </thead>
<s:iterator value="records" var="methodresult">
    <tr>
    	<td><s:property value="idtest"/></td>
        <td><s:property value="Classe"/></td>
        <td><s:property value="type"/></td>
        <td><s:property value="namemethode"/>
        <td><s:property value="sloc"/></td>
        	<s:if test=" 2<= slocInt && slocInt <=3"> <td style="color: green;"><img src="./Images/good.png" /><s:property value="slocInt"/></td> </s:if>
        	<s:elseif test=" 1<= slocInt && slocInt <2"> <td style="color: blue;"><img src="./Images/moyen.png" /><s:property value="slocInt"/></td> </s:elseif>
        	<s:elseif test=" 0<= slocInt && slocInt <1"> <td style="color: red;"><img src="./Images/bad.png" /><s:property value="slocInt"/></td> </s:elseif>
        	<s:else > <td><img src="./Images/bad.png" /> </s:else>
        
        <td><s:property value="Vg"/></td>

		<s:if test=" 2<= vgInt && vgInt <= 3"><td style="color: green;"><img src="./Images/good.png" /><s:property value="vgInt" /></td></s:if>
		<s:elseif test=" 1<= vgInt && vgInt <2"> <td style="color:blue;"> <img src="./Images/moyen.png" /><s:property value="vgInt"/> </td> </s:elseif>
        <s:elseif test=" 0<=vgInt && vgInt <1"> <td style="color:red;"><img src="./Images/bad.png" /><s:property value="vgInt"/> </td> </s:elseif>
       	<s:else ><td > <img src="./Images/bad.png" /> <s:property value="vgInt"/> </td></s:else>
        <td><s:property value="date"/></td>
      
    </tr> 
</s:iterator>
</table>
		      --%>   
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

