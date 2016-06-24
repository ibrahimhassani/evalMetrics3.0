<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>  
        <title>Eval Metrics | Parmetrer les métriques </title>
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
	                    	Coefficients des Sous-caractéristiques
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
									<s:form  method="post" cssClass="formAddMod">
											<s:hidden name="etat" value="ssCara"></s:hidden>
											<s:hidden name="para.ssCara.id" value="%{para.ssCara.id}"></s:hidden>
											<s:textfield name="para.ssCara.Convenance" value="%{para.ssCara.Convenance}" cssClass="formInput" label="Convenance" />
											<s:textfield name="para.ssCara.Exactitude" value="%{para.ssCara.Exactitude}" cssClass="formInput" label="Exactitude" />
											<s:textfield name="para.ssCara.Interoperabilite" value="%{para.ssCara.Interoperabilite}" cssClass="formInput" label= "Interperabilite" />
											<s:textfield name="para.ssCara.Securite" value="%{para.ssCara.Securite}" cssClass="formInput" label="securite" />
											<s:textfield name="para.ssCara.Compliance" value="%{para.ssCara.Compliance}" cssClass="formInput" label= "Compliance"/>
											<s:textfield name="para.ssCara.Maturite" value="%{para.ssCara.Maturite}" cssClass="formInput" label= "Maturite"/>
											<s:textfield name="para.ssCara.FausseTolerance" value="%{para.ssCara.FausseTolerance}" cssClass="formInput" label="Fausse_Tolerance"/>
											<s:textfield name="para.ssCara.Recoverabilite" value="%{para.ssCara.Recoverabilite}" cssClass="formInput" label="Recoverabilite" />
											<s:textfield name="para.ssCara.Clarete" value="%{para.ssCara.Clarete}" cssClass="formInput" label= "Clarete"/>
											<s:textfield name="para.ssCara.learnabilite" value="%{para.ssCara.learnabilite}" cssClass="formInput" label="Learnabilite"/>
											<s:textfield name="para.ssCara.Attractivite" value="%{para.ssCara.Attractivite}" cssClass="formInput" label= "Attractivite"/>
											<s:textfield name="para.ssCara.Comportement_time" value="%{para.ssCara.Comportement_time}" cssClass="formInput" label="Comportement_time"/>
											<s:textfield name="para.ssCara.Utilisation_Ressource" value="%{para.ssCara.Utilisation_Ressource}" cssClass="formInput" label= "Utilisation_Ressource"/>
											<s:textfield name="para.ssCara.Variabilite" value="%{para.ssCara.Variabilite}" cssClass="formInput" label= "Changeabilité"/>
									    	<s:textfield name="para.ssCara.Analyse" value="%{para.ssCara.Analyse}" cssClass="formInput" label= "Analyse"/>
											
											<s:textfield name="para.ssCara.Stabilite" value="%{para.ssCara.Stabilite}" cssClass="formInput" label= "Stabilite"/>
											
											<s:textfield name="para.ssCara.Testabilite" value="%{para.ssCara.Testabilite}" cssClass="formInput" label= "Testabilite"/>
											<s:textfield name="para.ssCara.Adabtabilite" value="%{para.ssCara.Adabtabilite}" cssClass="formInput" label="Adabtabilite"/>
											<s:textfield name="para.ssCara.Instabilite" value="%{para.ssCara.Instabilite}" cssClass="formInput" label="Instabilite" />
											<s:textfield name="para.ssCara.Conformite" value="%{para.ssCara.Conformite}" cssClass="formInput" label="Conformite" />
											<s:textfield name="para.ssCara.Remplacabilite" value="%{para.ssCara.Remplacabilite}" cssClass="formInput"  label="Remplacabilite"/>
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
    
    