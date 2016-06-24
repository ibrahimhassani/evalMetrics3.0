<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="logo"><img src="./Images/header_menu_logo.png"></img></div>
 <div id="content_menu">
            <s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">
                    <a href="ajouterProjetsTab">
                        <nav class="CmenuInactive" id="ajouter">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Ajouter</nav>  
                        </nav>
                    </a>
            </s:if>
                    <a href="listerProjetsTab">
                        <nav class="CmenuInactive" id="lister">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Lister</nav>  
                        </nav>
                    </a>
            <s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">
                    <a href="editerProjetsTab">
                        <nav class="CmenuInactive" id="editer">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Editer</nav>  
                        </nav>
                    </a>
                        </s:if>
                    <a href="#">
                        <nav class="CmenuInactive" id="projet">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Projet</nav>  
                        </nav>
                     </a>
                     <a href="#">
                        <nav class="CmenuInactive" id="tester">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Tester</nav>  
                        </nav>
                     </a>
                     <a href="#">
                        <nav class="CmenuInactive" id="graphe">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Graphe</nav>  
                        </nav>
                     </a>
                     <a href="#">
                        <nav class="CmenuInactive" id="Statistiques">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Statistiques</nav>  
                        </nav>
                     </a>
                     <a href="#">
                        <nav class="CmenuInactive" id="Design_Patterns">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Design Patterns</nav>  
                        </nav>
                     </a>
                      <a href="#">
                        <nav class="CmenuInactive" id="Interp">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Interpretation</nav>  
                        </nav>
                     </a>
                      <a href="#">
                        <nav class="CmenuInactive" id="parametrer">
                            <img class="CmenuPuce" src="./Images/content_header_menu_inactive_puce.png"/>
                            <nav class="CmenuText">Paramétrer</nav>  
                        </nav>
                     </a>
                        
</div>
<script type="text/javascript">
				$(document).ready(function () {
					//menu
					$('.menuActive').attr('class', 'menuInactive');
					$('#projets').attr('class', 'menuActive');
					$('#projet').hide();
					$('#tester').hide();
					$('#graphe').hide();
					$('#Statistiques').hide();
					$('#Design_Patterns').hide();
					$('#Interp').hide();
					$('#parametrer').hide();

				});
</script>