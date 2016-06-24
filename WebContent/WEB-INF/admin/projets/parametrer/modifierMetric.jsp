<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- saved from url=(0033)http://www.grafikart.fr/tutoriels -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>  
        <title>Eval Metrics | Paramétrage des métriques</title>
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
	                    	Coefficients des métriques
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
									<s:form  method="post" cssClass="formAddMod">
											<s:hidden name="para.id" value="%{para.id}"></s:hidden>
											<s:hidden name="etat" value="metric"></s:hidden>
											<s:hidden name="para.metrique.id" value="%{para.metrique.id}"></s:hidden>
											<s:textfield name="para.metrique.MPF" value="%{para.metrique.MPF}" label="MPF" cssClass="formInput" />
											<s:textfield name="para.metrique.WMC" value="%{para.metrique.WMC}" label="WMC" cssClass="formInput" />
											<s:textfield name="para.metrique.cyclo" value="%{para.metrique.cyclo}" label="Cyclomatique" cssClass="formInput" />
											<s:textfield name="para.metrique.VG" value="%{para.metrique.VG}" label="VG" cssClass="formInput" />
											<s:textfield name="para.metrique.NOC" value="%{para.metrique.NOC}" label="NOC" cssClass="formInput" />
											<s:textfield name="para.metrique.LOC" value="%{para.metrique.LOC}" label="LOC" cssClass="formInput" />
											<s:textfield name="para.metrique.DIT" value="%{para.metrique.DIT}" label="DIT" cssClass="formInput" />
											<s:textfield name="para.metrique.CLOC" value="%{para.metrique.CLOC}" label="CLOC" cssClass="formInput" />
											<s:textfield name="para.metrique.NOM" value="%{para.metrique.NOM}" label="NOM" cssClass="formInput" />
											<s:textfield name="para.metrique.POF" value="%{para.metrique.POF}" label="POF" cssClass="formInput" />
											<s:textfield name="para.metrique.MHF" value="%{para.metrique.MHF}" label="MHF" cssClass="formInput" />
											<s:textfield name="para.metrique.AHF" value="%{para.metrique.AHF}" label="AHF" cssClass="formInput" />
											<s:textfield name="para.metrique.RFC" value="%{para.metrique.RFC}" label="RFC" cssClass="formInput" />
											<s:textfield name="para.metrique.APF" value="%{para.metrique.APF}" label="APF" cssClass="formInput" />
											<s:textfield name="para.metrique.MPC" value="%{para.metrique.MPC}" label="MPC" cssClass="formInput" />
											<s:textfield name="para.metrique.Abs" value="%{para.metrique.Abs}" label="ABS" cssClass="formInput" />
											<s:textfield name="para.metrique.TCC" value="%{para.metrique.TCC}" label="TCC" cssClass="formInput" />
											<s:textfield name="para.metrique.I" value="%{para.metrique.I}" label="I" cssClass="formInput" />
											<s:textfield name="para.metrique.D" value="%{para.metrique.D}" label="D" cssClass="formInput" />
										   <s:textfield name="para.metrique.NOI" value="%{para.metrique.NOI}" label="NOI" cssClass="formInput" />
											<s:submit action="modifierPara" value="Terminer" align="center" cssClass="submit" labelposition="right"/>
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
    
    