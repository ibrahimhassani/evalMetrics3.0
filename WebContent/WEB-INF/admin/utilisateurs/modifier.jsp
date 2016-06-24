<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>  
        <title>Eval Metrics | Modification des utilisateurs</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
        <script src="./Scripts/jquery-1.8.3.js"></script>
<body>
<header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuUtilisateurs.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Modification des utilisateurs
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
								<jsp:include page="modifierForm.jsp"/>
		                    </section>
		                </div>
	            </section>
			</section>
<footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>	
			<script type="text/javascript">
				$(document).ready(function () {
					//menu
					$('.menuActive').attr('class', 'menuInactive');
					$('#utilisateurs').attr('class', 'menuActive');
					//Cmenu
					$('.CmenuActive').attr('class', 'CmenuInactive');
					$('#editer').attr('class', 'CmenuActive');
					$('#editer img').attr('src', './Images/content_header_menu_active_puce.png');

				});
			</script>
</body>
    </html>
    
    