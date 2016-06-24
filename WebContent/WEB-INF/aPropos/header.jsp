<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    			<div class="header_menu">
                    <a href="admin">
                        <nav class="menuInactive" id="admin">
                            <img class="menuPuce" src="./Images/header_menu_userOnline.png"/>
                            <nav class="menuText">Admin : Welcome ${session.login}</nav>  
                        </nav>
                    </a> 
                    <a href="logOut">
                        <nav class="menuInactive" id="logOut">
                            <img class="menuPuce" src="./Images/header_menu_logOut.png"/>
                            <nav class="menuText">Déconnection</nav>  
                        </nav>
                    </a>
                    <img class="separator" src="./Images/header_menu_separator.png"/>
                  
                    
                    <a href="utilisateurs">
                        <nav class="menuInactive" id="utilisateurs">
                            <img class="menuPuce" src="./Images/users.png"/>
                            <nav class="menuText">Utilisateurs</nav>  
                        </nav>
                    </a>
                    <a href="projets">
                        <nav class="menuInactive" id="projets">
                            <img class="menuPuce" src="./Images/project.png"/>
                            <nav class="menuText">Projets</nav>  
                        </nav>
                    </a>
                    <a href="contact">
                        <nav class="menuInactive" id="contact">
                            <img class="menuPuce" src="./Images/contact.png"/>
                            <nav class="menuText">Contact</nav>  
                        </nav>
                    </a>
                    <a href="aPropos">
                        <nav class="menuInactive" id="aPropos">
                            <img class="menuPuce" src="./Images/aPropos.png"/>
                            <nav class="menuText">A propos</nav>  
                        </nav>
                    </a>
    			</div>
