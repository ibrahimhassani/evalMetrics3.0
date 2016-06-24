<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="logo"><img src="./Images/header_menu_logo.png"></img></div>
 <div id="content_menu">
                    <a href="addForm">
                        <nav class="CmenuInactive" id="ajouter">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Ajouter</nav>  
                        </nav>
                    </a>
                    <a href="liste">
                        <nav class="CmenuInactive" id="lister">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Lister</nav>  
                        </nav>
                    </a>
                    <a href="editer">
                        <nav class="CmenuInactive" id="editer">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Editer</nav>  
                        </nav>
                    </a>
</div>

<script type="text/javascript">
				$(document).ready(function () {
					//menu
					$('.menuActive').attr('class', 'menuInactive');
					$('#utilisateurs').attr('class', 'menuActive');
				});
</script>