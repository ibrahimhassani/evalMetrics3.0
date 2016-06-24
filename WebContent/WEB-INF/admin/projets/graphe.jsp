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
</head>

<body>
<header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Graphe
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
								<img src="graphe_fct.action"/>
		                    </section>
		                </div>	
	            </section>
			</section>
<footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>	
			<script type="text/javascript">
				$(document).ready(function () {
					//cmenu
					$(document).ready(function () {
						
						$('#graphe').attr('class', 'CmenuActive');
						$('#graphe img').attr('src', './Images/content_header_menu_active_puce.png');
						$('#graphe').show();
					});
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
    
    