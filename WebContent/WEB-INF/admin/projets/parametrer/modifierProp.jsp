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
	                    	Coefficient des propriétés 
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
									<s:form  method="post" cssClass="formAddMod">
											<s:hidden name="para.propriete.id" value="%{para.propriete.id}"></s:hidden>
											<s:hidden name="etat" value="propriete"></s:hidden>
											<!--<s:textfield name="para.id" value="%{para.id}" cssClass="formInput" />-->
											<s:textfield name="para.propriete.heritage" value="%{para.propriete.heritage}" cssClass="formInput" label="heritage" />
											<s:textfield name="para.propriete.coupling" value="%{para.propriete.coupling}" cssClass="formInput"  label="coupling"/>
											
											<s:textfield name="para.propriete.size" value="%{para.propriete.size}" cssClass="formInput" label="size"/>
											
											<s:textfield name="para.propriete.encapsulation" value="%{para.propriete.encapsulation}" cssClass="formInput" label="encapsulation" />
											
			                              
			                                <s:textfield name="para.propriete.consistence" value="%{para.propriete.consistence}" cssClass="formInput" label="consistence" />
			                                <s:textfield name="para.propriete.precision" value="%{para.propriete.precision}" cssClass="formInput" label="precision" />
			                                <s:textfield name="para.propriete.cohesion" value="%{para.propriete.cohesion}" cssClass="formInput" label="cohesion" />
			                                <s:textfield name="para.propriete.tolerence" value="%{para.propriete.tolerence}" cssClass="formInput" label="tolerence" />
			                                <s:textfield name="para.propriete.instabilite" value="%{para.propriete.instabilite}" cssClass="formInput" label="instabilite" />
			                                <s:textfield name="para.propriete.abstraction" value="%{para.propriete.abstraction}" cssClass="formInput" label="abstraction" />
			                                <s:textfield name="para.propriete.composition" value="%{para.propriete.composition}" cssClass="formInput" label="composition" />
			                                <s:textfield name="para.propriete.modularite" value="%{para.propriete.modularite}" cssClass="formInput" label="modularite" />
			                                <s:textfield name="para.propriete.dependence" value="%{para.propriete.dependence}" cssClass="formInput" label="dependence" />
			                                <s:textfield name="para.propriete.complexite" value="%{para.propriete.complexite}" cssClass="formInput" label="complexite" />
			                                <s:textfield name="para.propriete.message" value="%{para.propriete.message}" cssClass="formInput" label="message" />
	                                        <s:textfield name="para.propriete.specialisation" value="%{para.propriete.specialisation}" cssClass="formInput" label="specialisation" />
	                                        <s:textfield name="para.propriete.nbmethodes" value="%{para.propriete.nbmethodes}" cssClass="formInput" label="nbmethodes" />
	                                        <s:textfield name="para.propriete.sizemethodes" value="%{para.propriete.sizemethodes}" cssClass="formInput" label="sizemethodes" />
	                                        <s:textfield name="para.propriete.stabilite" value="%{para.propriete.stabilite}" cssClass="formInput" label="stabilite" />
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
    
    