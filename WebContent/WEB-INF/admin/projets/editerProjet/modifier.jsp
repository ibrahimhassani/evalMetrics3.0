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
<body>
<header class="header">
         <jsp:include page="./../../header/header.jsp"></jsp:include>
         <jsp:include page="./../../header/CmenuProjets.jsp"></jsp:include>
</header>
            <section id="main_content">
	            <section class="content_section">
	                	<div class="header_sec">
	                    	Modification des projets
	                    </div>
			    		<div class="content_sec">
			    			<section id="form_">
								<jsp:include page="modifierForm.jsp"/>
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
					$('#editer').attr('class', 'CmenuActive');
					$('#editer img').attr('src', './Images/content_header_menu_active_puce.png');
				});
			</script>
			<script type="text/javascript">
			function selectAll(){
				for (var i=0;i<modifierProjet_users_chosen_ID.options.length;i++) {
					modifierProjet_users_chosen_ID.options[i].selected = true;
				}
			}
			</script>
</body>
    </html>
    
    