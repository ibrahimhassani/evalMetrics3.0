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
<script>function listbox_move(listID,direction){var listbox=document.getElementById(listID);var selIndex=listbox.selectedIndex;if(-1==selIndex){alert("Please select an option to move.");return;}
var increment=-1;if(direction=='up')
increment=-1;else
increment=1;if((selIndex+increment)<0||(selIndex+increment)>(listbox.options.length-1)){return;}
var selValue=listbox.options[selIndex].value;var selText=listbox.options[selIndex].text;listbox.options[selIndex].value=listbox.options[selIndex+increment].value
listbox.options[selIndex].text=listbox.options[selIndex+increment].text
listbox.options[selIndex+increment].value=selValue;listbox.options[selIndex+increment].text=selText;listbox.selectedIndex=selIndex+increment;}
function listbox_moveacross(sourceID,destID){var src=document.getElementById(sourceID);var dest=document.getElementById(destID);for(var count=0;count<src.options.length;count++){if(src.options[count].selected==true){var option=src.options[count];var newOption=document.createElement("option");newOption.value=option.value;newOption.text=option.text;newOption.selected=true;try{dest.add(newOption,null);src.remove(count,null);}catch(error){dest.add(newOption);src.remove(count);}
count--;}}}
function listbox_selectall(listID,isSelect){var listbox=document.getElementById(listID);for(var count=0;count<listbox.options.length;count++){listbox.options[count].selected=isSelect;}}</script>
</head>
<body>
<header class="header">
         <jsp:include page="./../../header/header.jsp"></jsp:include>
         <jsp:include page="./../../header/CmenuProjets.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Ajout des projets
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
								<s:actionerror cssClass="formError"/>
								   <s:form action="fileUpload"  method="post" validate="true" cssClass="formAddMod">
										<s:textfield name="myFile.name" cssClass="formInput" label="Nom du projet"/>
										<s:textfield name="myFile.folder" cssClass="formInput" label="dossier"/>
										<s:select label="Utilisateurs"
									        name="users"
									        list="users"
									        listKey="id"
									        listValue="userLogin"
									        multiple="true"
									        size="3"
									        required="true"
									     />
									     <s:a href="#" onclick="listbox_moveacross('fileUpload_users', 'fileUpload_users_chosen_ID')">&gt;&gt;</s:a>
										 <s:a href="#" onclick="listbox_moveacross('fileUpload_users_chosen_ID', 'fileUpload_users')">&lt;&lt;</s:a>
									     
									     <s:select label="Utilisateurs"
									        name="users_chosen_ID"
									        list="users_chosen"
									        listKey="id"
									        listValue="userLogin"
									        multiple="true"
									        size="3"
									        required="true"
									     />
									     <s:submit type="submit" value="Importer" align="center" cssClass="submit" labelposition="right"/>
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
					//cmenu
					$('.CmenuActive').attr('class', 'CmenuInactive');
					$('#ajouter').attr('class', 'CmenuActive');
					$('#ajouter img').attr('src', './Images/content_header_menu_active_puce.png');
				});
			</script>
</body>
    </html>
    
    