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
<title>Evolution du projet</title>
</head>
<body>
	<header class="header">
		<jsp:include page="./../header/header.jsp"></jsp:include>
		<jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
	</header>
	<section id="main_content">
		<section class="content_section">
			<div class="header_sec">Statistiques:</div>
			<div class="content_sec">
			 <div style="text-align: center">
							<a class="buttonExport" style="float: left; width: 200px;" href="Interpclass?idp=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par classes </a>
							<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="id"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
							<a class="buttonExport" style="float: right; width: 90px;" href="graphe_histo?id=<s:property value="id"/>">Graphes <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
							<br />
							<br />
							<br />
							</div> 
				<br />
				<section id="form_stats">
					<img src="lines.action" style="float: left; margin: 0 50px 0 50px;" />
					<br /> Nombre de lignes total &nbsp;&nbsp;:
					<s:property value="result.LOC+result.CLOC" />
					&nbsp;&nbsp;(
					<s:if
						test=" (result.LOC+result.CLOC)-(oldResult.LOC+oldResult.CLOC) <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif
						test=" (result.LOC+result.CLOC)-(oldResult.LOC+oldResult.CLOC) >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property
						value="(result.LOC+result.CLOC)-(oldResult.LOC+oldResult.CLOC)" />
					) <br /> Nombre de lignes Codes :
					<s:property value="result.LOC" />
					&nbsp;&nbsp;(
					<s:if test=" result.LOC-oldResult.LOC <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" result.LOC-oldResult.LOC >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="result.LOC-oldResult.LOC" />
					) <br /> Nombre de lignes Commentaires :
					<s:property value="result.CLOC" />
					(
					<s:if test=" result.CLOC-oldResult.CLOC <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" result.CLOC-oldResult.CLOC >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="result.CLOC-oldResult.CLOC" />
					)
				</section>
				<section id="form_stats">
					<img src="methods.action"
						style="float: left; margin: 0 50px 0 50px;" /> <br /> Nombre de
					méthodes statiques &nbsp;:
					<s:property value="stat.nbMSF" />
					&nbsp;&nbsp;&nbsp;(
					<s:if test=" stat.nbMSF-oldStat.nbMSF <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" stat.nbMSF-oldStat.nbMSF >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="stat.nbMSF-oldStat.nbMSF" />
					) <br /> Nombre de methodes publiques :
					<s:property value="stat.nbNPM" />
					&nbsp;(
					<s:if test=" stat.nbNPM-oldStat.nbNPM <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" stat.nbNPM-oldStat.nbNPM  >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="stat.nbNPM-oldStat.nbNPM" />
					) <br /> Nombre de méthodes privées &nbsp;&nbsp;&nbsp;&nbsp;:
					<s:property value="stat.nbMHF" />
					&nbsp;&nbsp;&nbsp;(
					<s:if test=" stat.nbMHF-oldStat.nbMHF <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" stat.nbMHF-oldStat.nbMHF  >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="stat.nbMHF-oldStat.nbMHF" />
					) <br /> Nombre de méthodes protégées :
					<s:property value="stat.nbMPF" />
					&nbsp;&nbsp;&nbsp;(
					<s:if test=" stat.nbMPF-oldStat.nbMPF <0">
						<img src="./Images/down.png" />
					</s:if>
					<s:elseif test=" stat.nbMPF-oldStat.nbMPF  >0">
						<img src="./Images/up.png" />
					</s:elseif>
					<s:else>
						<img src="./Images/eq.png" />
					</s:else>
					<s:property value="stat.nbMPF-oldStat.nbMPF" />
					) <br />
				</section>
				<h2>Statistiques Générales</h2>
				<section id="form_stats">
					<br />
					<div
						style="display: inline; float: left; margin-left: 110px; margin-bottom: 30px;">
						Nombre de méthodes :
						<s:property value="stat.nbMethods" />
						&nbsp;(
						<s:if test=" stat.nbMethods-oldStat.nbMethods <0">
							<img src="./Images/down.png" />
						</s:if>
						<s:elseif test=" stat.nbMethods-oldStat.nbMethods >0">
							<img src="./Images/up.png" />
						</s:elseif>
						<s:else>
							<img src="./Images/eq.png" />
						</s:else>
						<s:property value="stat.nbMethods-oldStat.nbMethods" />
						) <br /> Nombre de Classes &nbsp;&nbsp;:
						<s:property value="stat.nbClasses" />
						&nbsp;&nbsp;&nbsp;(
						<s:if test=" stat.nbClasses-oldStat.nbClasses <0">
							<img src="./Images/down.png" />
						</s:if>
						<s:elseif test=" stat.nbClasses-oldStat.nbClasses  >0">
							<img src="./Images/up.png" />
						</s:elseif>
						<s:else>
							<img src="./Images/eq.png" />
						</s:else>
						<s:property value="stat.nbClasses-oldStat.nbClasses" />
						)
					</div>
					<div
						style="display: inline; float: right; margin-right: 160px; margin-bottom: 30px;">
						Nombre d'attributs &nbsp;:
						<s:property value="stat.nbAtrributs" />
						&nbsp;&nbsp;&nbsp;(
						<s:if test=" stat.nbAtrributs-oldStat.nbAtrributs <0">
							<img src="./Images/down.png" />
						</s:if>
						<s:elseif test=" stat.nbAtrributs-oldStat.nbAtrributs  >0">
							<img src="./Images/up.png" />
						</s:elseif>
						<s:else>
							<img src="./Images/eq.png" />
						</s:else>
						<s:property value="stat.nbAtrributs-oldStat.nbAtrributs" />
						) <br /> Nombre de fichiers :
						<s:property value="stat.nbFiles" />
						&nbsp;&nbsp;&nbsp;(
						<s:if test=" stat.nbFiles-oldStat.nbFiles <0">
							<img src="./Images/down.png" />
						</s:if>
						<s:elseif test=" stat.nbFiles-oldStat.nbFiles  >0">
							<img src="./Images/up.png" />
						</s:elseif>
						<s:else>
							<img src="./Images/eq.png" />
						</s:else>
						<s:property value="stat.nbFiles-oldStat.nbFiles" />
						) <br />
					</div>
					</br>
					</br> <img src="generalMC.action" style="float: left; margin: 0 0 0 0;" />
					<img src="generalAF.action" style="float: right; margin: 0 0 0 0;" />
				</section>
			</div>
		</section>
	</section>
	<footer>
		<jsp:include page="./../footer/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript">
				$(document).ready(function () {
					
					$('#Statistiques').attr('class', 'CmenuActive');
					$('#Statistiques img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#Statistiques').show();
				});
			</script>
	<script type="text/javascript">
			function selectAll(){
				for (var i=0;i<fileUpload_users_chosen_ID.options.length;i++) {
					fileUpload_users_chosen_ID.options[i].selected = true;
				}
			}
			</script>
</body>
</html>

