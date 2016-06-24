<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>  
        <title>Eval Metrics | Parametrage des metriques</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
        <script src="./Scripts/jquery-1.8.3.js"></script>
<body>
<header class="header">
         <jsp:include page="./../../header/header.jsp"></jsp:include>
         <jsp:include page="./../../header/CmenuProjets.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Coefficients des caractéristiques
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
									<s:form  method="post" cssClass="formAddMod">
											<s:hidden name="para.cara.id" value="%{para.cara.id}"></s:hidden>
											<s:hidden name="etat" value="cara"></s:hidden>
											<!--<s:textfield name="para.id" value="%{para.id}" cssClass="formInput" />-->
											<s:textfield name="para.cara.Fonctionnalite" value="%{para.cara.Fonctionnalite}" cssClass="formInput" label="Fonctionnalite" />
											<s:textfield name="para.cara.Reliabilite" value="%{para.cara.Reliabilite}" cssClass="formInput"  label="Fiabilite"/>
											<s:textfield name="para.cara.Maintenabilite" value="%{para.cara.Maintenabilite}" cssClass="formInput" label="Maintenabilite" />
											<s:textfield name="para.cara.Portabilite" value="%{para.cara.Portabilite}" cssClass="formInput" label="Efficacite"/>
											<s:textfield name="para.cara.Usabilite" value="%{para.cara.Usabilite}" cssClass="formInput" label="Utilisabilité" />
											<s:textfield name="para.cara.Efficacite" value="%{para.cara.Efficacite}" cssClass="formInput" label="Portabilite" />
											<s:submit action="modifierPara" value="suivant" align="center" cssClass="submit" labelposition="right"/>
									</s:form>
								</section>
		                </div>
	            </section>
			</section>
<footer>
	 <jsp:include page="./../../footer/footer.jsp"></jsp:include>
</footer>	
			<script type="text/javascript">
				$(document).ready(function () {
					$('.CmenuActive').attr('class', 'CmenuInactive');
					$('#parametrer').attr('class', 'CmenuActive');
					$('#parametrer img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#parametrer').show();
				});
			</script>
</body>
    </html>
    
    