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
</head>
<body>
<section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Résultats du test sur les métriques
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
									<table class="listUserTable">
									<thead>
										<tr>
										 	<th scope="col">MPF</th>
											<th scope="col">WMC</th>
											<th scope="col">cyclo</th>
											<th scope="col">VG</th>
											<th scope="col">NOC</th>
											<th scope="col">LOC</th>
											<th scope="col">DIT</th>
											<th scope="col">CLOC</th>
											<th scope="col">NOM</th>
											<th scope="col">POF</th>
											<th scope="col">MHF</th>
											<th scope="col">AHF</th>
											<th scope="col">RFC</th>
											<th scope="col">APF</th>
											<th scope="col">Abs</th>
											<th scope="col">MPC</th>
											<th scope="col">TCC</th>
											<th scope="col">Inst</th>
											<th scope="col">D</th>
											<th scope="col">NOI</th>
										</tr>
									</thead>
									
										<tr>
											<td><s:property value="parametres.MPF"/></td>
											<td><s:property value="parametres.WMC"/></td>
											<td><s:property value="parametres.cyclo"/></td>
											<td><s:property value="parametres.VG"/></td>
											<td><s:property value="parametres.NOC"/></td>
											<td><s:property value="parametres.LOC"/></td>
											<td><s:property value="parametres.DIT"/></td>
											<td><s:property value="parametres.CLOC"/></td>
											<td><s:property value="parametres.NOM"/></td>
											<td><s:property value="parametres.POF"/></td>
											<td><s:property value="parametres.MHF"/></td>
											<td><s:property value="parametres.AHF"/></td>
											<td><s:property value="parametres.RFC"/></td>
											<td><s:property value="parametres.APF"/></td>
											<td><s:property value="parametres.Abs"/></td>
											<td><s:property value="parametres.MPC"/></td>
											<td><s:property value="parametres.TCC"/></td>
											<td><s:property value="parametres.I"/></td>
											<td><s:property value="parametres.D"/></td>
											<td><s:property value="parametres.NOI"/></td>
										</tr>	
									</table>
		                    </section>
		                </div>
	            </section>
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
    


