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
<title>Evolution du projet</title>
<style type="text/css">
  b {
    color: #085fb6;
    }
    p{
    color: black;
    }
    li{
      color: black;
    
    }
    .InterTable{
	
	color: #000000;
	font-weight: normal;
	font-size: 18px;
	
}
  </style>
</head>
<body>
<header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Les graphes des résultats des métriques:
	                    </div>
	                
			    <div class="content_sec">
			    <div style="text-align: center">
							<a class="buttonExport" style="float: left; width: 200px;" href="Interpclass?idp=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par classes </a>
							<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
							<a class="buttonExport" style="float: right; width: 120px;" href="stats?id=<s:property value="id"/>">Statistiques <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
							<br />
							<br />
							<br />
							</div> 
					
 					 <h3> L'évolution des métriques par type de propri&eacute;t&eacute; :</h3>
<table border="0" style="width:1250px">
					
					<tr>
 					 <td>
		                  
                             <h3>1- Métriques d'héritage :</h3>
                            <section id="formm">
								<img src="caract_heritage.action" />
	
		                    </section>
		                         </td>
  						<td>
                             <h3>2- Métriques d'encapsulation :</h3>
		                    <section id="formm">
								<img src="caract_encap.action" />
	
		                    </section>
		                   
		                     </td> 
  						
							<td>
                             <h3>3- Métriques de complexité :</h3>
		                    <section id="formm">
								<img src="caract_complex.action" />
 
		                    </section>
		                    </td>
		                    </tr>
		                     </table>
		                     <table border="0" style="width:1250px">
		                       <tr>
 					 <td>
		                  
                             <h3>4- Métriques de coupling :</h3>
                            <section id="formm">
								<img src="caract_coupl.action" />
	
		                    </section>
		                         </td>
  						<td>
                             <h3>5- Métriques d'abstraction :</h3>
		                    <section id="formm">
								<img src="abstr.action" />
	
		                    </section>
		                   
		                     </td> 
  						
						
		                    </tr>
		                	</table>
		                	 <table border="0" style="width:1250px">
		                       <tr>
 					 <td>
		                  
                             <h3>6- Métriques du size :</h3>
                            <section id="formm">
								<img src="size.action" />
	
		                    </section>
		                         </td>
  						<td>
  						</table>
		                     </div>
		                     
		              	
		                
	            </section>
	            
			</section>
			
<footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>	
			<script type="text/javascript">
				$(document).ready(function () {
					
					$('#graphe').attr('class', 'CmenuActive');
					$('#graphe img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#graphe').show();
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
