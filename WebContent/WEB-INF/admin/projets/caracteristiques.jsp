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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
<script src="./Scripts/jquery-1.8.3.js"></script>
<link href="./StylesSheets/metro/blue/jtable.css" rel="stylesheet"
	type="text/css" />
<link href="./StylesSheets/jquery-ui-1.10.3.custom.css" rel="stylesheet"
	type="text/css" />

<script src="./Scripts/jquery-1.8.3.js" type="text/javascript"></script>
<script src="./Scripts/jquery-ui.custom.js" type="text/javascript"></script>
<script src="./Scripts/jquery.jtable.js" type="text/javascript"></script>
<script src="./Scripts/jquery.jtable.fr.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#StudentTableContainer')
								.jtable(
										{
											title : 'liste des caractéristiques',
											paging : true,
											pageSize : 10,
											sorting : true,
											defaultSorting : 'date DESC',
											actions : {
												listAction : 'listCaracAction?idp=<s:property value="idp"/>',
												<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' ">
												deleteAction : 'deleteCaracAction'
												</s:if>
											},
											fields : {
												id : {
													title : 'id',
													key : true,
													list : false,
												},
												<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet' |#session.statut =='Developpeur'">
												sub : {
													title : '',
													width : '5%',
													sorting : false,
													edit : false,
													create : false,
													display : function(
															caracData) {
														//Create an image that will be used to open child table
														var $img = $('<img src="./Images/Letter-S-blue-icon.png" title="Afficher les sous-caractéristiques" />');
														//Open child table when user clicks the image
														$img
																.click(function() {
																	$(
																			'#StudentTableContainer')
																			.jtable(
																					'openChildTable',
																					$img
																							.closest('tr'),
																					{
																						title : 'Sub-caractéristiques - '
																								+ caracData.record.date,
																						actions : {
																							listAction : 'listSubAction?idp=<s:property value="idp"/>&idresult='
																									+ caracData.record.id
																						},
																						fields : {
																							interoperabilite : {
																								title : 'In',
																								width : '3%',
																								list : true,
																							},
																							interoperabiliteInt : {
																								title : 'In I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.interoperabiliteInt
																											&& data.record.interoperabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.interoperabiliteInt;
																									} else if (1 <= data.record.interoperabiliteInt
																											&& data.record.interoperabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.interoperabiliteInt;
																									} else if (2 <= data.record.interoperabiliteInt
																											&& data.record.interoperabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.interoperabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.interoperabiliteInt;
																									}
																								}
																							},
																							securite : {
																								title : 'S',
																								width : '3%',
																								list : true,
																							},
																							securiteInt : {
																								title : 'S I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.securiteInt
																											&& data.record.securiteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.securiteInt;
																									} else if (1 <= data.record.securiteInt
																											&& data.record.securiteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.securiteInt;
																									} else if (2 <= data.record.securiteInt
																											&& data.record.securiteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.securiteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.securiteInt;
																									}
																								}
																							},
																							maturite : {
																								title : 'Ma',
																								width : '3%',
																								list : true,
																							},
																							maturiteInt : {
																								title : 'Ma I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.maturiteInt
																											&& data.record.maturiteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.maturiteInt;
																									} else if (1 <= data.record.maturiteInt
																											&& data.record.maturiteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.maturiteInt;
																									} else if (2 <= data.record.maturiteInt
																											&& data.record.maturiteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.maturiteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.maturiteInt;
																									}
																								}
																							},
																							fausseTolerance : {
																								title : 'FT',
																								width : '3%',
																								list : true,
																							},
																							fausseToleranceInt : {
																								title : 'FT I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.fausseToleranceInt
																											&& data.record.fausseToleranceInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.fausseToleranceInt;
																									} else if (1 <= data.record.fausseToleranceInt
																											&& data.record.fausseToleranceInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.fausseToleranceInt;
																									} else if (2 <= data.record.fausseToleranceInt
																											&& data.record.fausseToleranceInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.fausseToleranceInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.fausseToleranceInt;
																									}
																								}
																							},
																							recoverabilite : {
																								title : 'Re',
																								width : '3%',
																								list : true,
																							},
																							recoverabiliteInt : {
																								title : 'Re I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.recoverabiliteInt
																											&& data.record.recoverabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.recoverabiliteInt;
																									} else if (1 <= data.record.recoverabiliteInt
																											&& data.record.recoverabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.recoverabiliteInt;
																									} else if (2 <= data.record.recoverabiliteInt
																											&& data.record.recoverabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.recoverabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.recoverabiliteInt;
																									}
																								}
																							},
																							attractivite : {
																								title : 'At',
																								width : '3%',
																								list : true,
																							},
																							attractiviteInt : {
																								title : 'At I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.attractiviteInt
																											&& data.record.attractiviteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.attractiviteInt;
																									} else if (1 <= data.record.attractiviteInt
																											&& data.record.attractiviteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.attractiviteInt;
																									} else if (2 <= data.record.attractiviteInt
																											&& data.record.attractiviteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.attractiviteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.attractiviteInt;
																									}
																								}
																							},
																							variabilite : {
																								title : 'V',
																								width : '3%',
																								list : true,
																							},
																							variabiliteInt : {
																								title : 'V I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.variabiliteInt
																											&& data.record.variabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.variabiliteInt;
																									} else if (1 <= data.record.variabiliteInt
																											&& data.record.variabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.variabiliteInt;
																									} else if (2 <= data.record.variabiliteInt
																											&& data.record.variabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.variabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.variabiliteInt;
																									}
																								}
																							},
																							analyse : {
																								title : 'An',
																								width : '3%',
																								list : true,
																							},
																							analyseInt : {
																								title : 'An I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.analyseInt
																											&& data.record.analyseInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.analyseInt;
																									} else if (1 <= data.record.analyseInt
																											&& data.record.analyseInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.analyseInt;
																									} else if (2 <= data.record.analyseInt
																											&& data.record.analyseInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.analyseInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.analyseInt;
																									}
																								}
																							},
																							stabilite : {
																								title : 'St',
																								width : '3%',
																								list : true,
																							},
																							stabiliteInt : {
																								title : 'St I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.stabiliteInt
																											&& data.record.stabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.stabiliteInt;
																									} else if (1 <= data.record.stabiliteInt
																											&& data.record.stabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.stabiliteInt;
																									} else if (2 <= data.record.stabiliteInt
																											&& data.record.stabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.stabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.stabiliteInt;
																									}
																								}
																							},
																							instabilite : {
																								title : 'In',
																								width : '3%',
																								list : true,
																							},
																							instabiliteInt : {
																								title : 'In I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.instabiliteInt;
																									} else if (1 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.instabiliteInt;
																									} else if (2 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.instabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.instabiliteInt;
																									}
																								}
																							}

																						}
																					},
																					function(
																							data) { //opened handler
																						data.childTable
																								.jtable('load');
																					});
																});
														//Return image to show on the person row
														return $img;
													}
												},
												</s:if>
												<s:if test="#session.statut =='admin' |#session.statut =='Chef de projet'">
												prop : {
													title : '',
													width : '5%',
													sorting : false,
													edit : false,
													create : false,
													display : function(
															caracData) {
														//Create an image that will be used to open child table
														var $img = $('<img src="./Images/Letter-P-blue-icon.png" title="Afficher les Propriétés" />');
														//Open child table when user clicks the image
														$img
																.click(function() {
																	$(
																			'#StudentTableContainer')
																			.jtable(
																					'openChildTable',
																					$img
																							.closest('tr'),
																					{
																						title : 'Propriétés - '
																								+ caracData.record.date,
																						actions : {
																							listAction : 'listPropAction?idp=<s:property value="idp"/>&idresult='
																									+ caracData.record.id
																						},
																						fields : {
																							complexite : {
																								title : 'Cm',
																								width : '3%',
																								list : true,
																							},
																							complexiteInt : {
																								title : 'Cm I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.complexiteInt
																											&& data.record.complexiteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.complexiteInt;
																									} else if (1 <= data.record.complexiteInt
																											&& data.record.complexiteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.complexiteInt;
																									} else if (2 <= data.record.complexiteInt
																											&& data.record.complexiteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.complexiteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.complexiteInt;
																									}
																								}
																							},
																							size : {
																								title : 'Sz',
																								width : '3%',
																								list : true,
																							},
																							sizeInt : {
																								title : 'Sz I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.sizeInt
																											&& data.record.sizeInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.sizeInt;
																									} else if (1 <= data.record.sizeInt
																											&& data.record.sizeInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.sizeInt;
																									} else if (2 <= data.record.sizeInt
																											&& data.record.sizeInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.sizeInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.sizeInt;
																									}
																								}
																							},
																							heritage : {
																								title : 'Hg',
																								width : '3%',
																								list : true,
																							},
																							heritageInt : {
																								title : 'Hg I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.heritageInt
																											&& data.record.heritageInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.heritageInt;
																									} else if (1 <= data.record.heritageInt
																											&& data.record.heritageInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.heritageInt;
																									} else if (2 <= data.record.heritageInt
																											&& data.record.heritageInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.heritageInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.heritageInt;
																									}
																								}
																							},
																							encapsulation : {
																								title : 'En',
																								width : '3%',
																								list : true,
																							},
																							encapsulationInt : {
																								title : 'En I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.encapsulationInt
																											&& data.record.encapsulationInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.encapsulationInt;
																									} else if (1 <= data.record.encapsulationInt
																											&& data.record.encapsulationInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.encapsulationInt;
																									} else if (2 <= data.record.encapsulationInt
																											&& data.record.encapsulationInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.encapsulationInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.encapsulationInt;
																									}
																								}
																							},
																							abstraction : {
																								title : 'Ab',
																								width : '3%',
																								list : true,
																							},
																							abstractionInt : {
																								title : 'Ab I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.abstractionInt
																											&& data.record.abstractionInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.abstractionInt;
																									} else if (1 <= data.record.abstractionInt
																											&& data.record.abstractionInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.abstractionInt;
																									} else if (2 <= data.record.abstractionInt
																											&& data.record.abstractionInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.abstractionInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.abstractionInt;
																									}
																								}
																							},
																							instabilite : {
																								title : 'In',
																								width : '3%',
																								list : true,
																							},
																							instabiliteInt : {
																								title : 'In I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.instabiliteInt;
																									} else if (1 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.instabiliteInt;
																									} else if (2 <= data.record.instabiliteInt
																											&& data.record.instabiliteInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.instabiliteInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.instabiliteInt;
																									}
																								}
																							},
																							dependence : {
																								title : 'De',
																								width : '3%',
																								list : true,
																							},
																							dependenceInt : {
																								title : 'De I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.dependenceInt
																											&& data.record.dependenceInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.dependenceInt;
																									} else if (1 <= data.record.dependenceInt
																											&& data.record.dependenceInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.dependenceInt;
																									} else if (2 <= data.record.dependenceInt
																											&& data.record.dependenceInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.dependenceInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.dependenceInt;
																									}
																								}
																							},
																							message : {
																								title : 'Me',
																								width : '3%',
																								list : true,
																							},
																							messageInt : {
																								title : 'Me I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.messageInt
																											&& data.record.messageInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.messageInt;
																									} else if (1 <= data.record.messageInt
																											&& data.record.messageInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.messageInt;
																									} else if (2 <= data.record.messageInt
																											&& data.record.messageInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.messageInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.messageInt;
																									}
																								}
																							},
																							cohesion : {
																								title : 'Co',
																								width : '3%',
																								list : true,
																							},
																							cohesionInt : {
																								title : 'Co I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.cohesionInt
																											&& data.record.cohesionInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.cohesionInt;
																									} else if (1 <= data.record.cohesionInt
																											&& data.record.cohesionInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.cohesionInt;
																									} else if (2 <= data.record.cohesionInt
																											&& data.record.cohesionInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.cohesionInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.cohesionInt;
																									}
																								}
																							},
																							coupling : {
																								title : 'Cp',
																								width : '3%',
																								list : true,
																							},
																							couplingInt : {
																								title : 'Cp I',
																								width : '10%',
																								list : true,
																								sorting : false,
																								display : function(
																										data) {
																									if (0 <= data.record.couplingInt
																											&& data.record.couplingInt < 1) {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																												+ data.record.couplingInt;
																									} else if (1 <= data.record.couplingInt
																											&& data.record.couplingInt < 2) {
																										return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																												+ data.record.couplingInt;
																									} else if (2 <= data.record.couplingInt
																											&& data.record.couplingInt <= 3) {
																										return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																												+ data.record.couplingInt;
																									} else {
																										return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																												+ data.record.couplingInt;
																									}
																								}
																							}

																						}
																					},
																					function(
																							data) { //opened handler
																						data.childTable
																								.jtable('load');
																					});
																});
														//Return image to show on the person row
														return $img;
													}
												},
												</s:if>
												date : {
													title : 'date',
													width : '10%',
													type : 'date',
													list : true,
												},
												fonctionnalite : {
													title : 'F',
													width : '3%',
													list : true,
												},
												fonctionnaliteInt : {
													title : 'F Int',
													width : '10%',
													list : true,
													sorting : false,
													display : function(data) {
														if (0 <= data.record.fonctionnaliteInt
																&& data.record.fonctionnaliteInt < 1) {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																	+ data.record.fonctionnaliteInt;
														} else if (1 <= data.record.fonctionnaliteInt
																&& data.record.fonctionnaliteInt < 2) {
															return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																	+ data.record.fonctionnaliteInt;
														} else if (2 <= data.record.fonctionnaliteInt
																&& data.record.fonctionnaliteInt <= 3) {
															return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																	+ data.record.fonctionnaliteInt;
														} else {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																	+ data.record.fonctionnaliteInt;
														}
													}
												},
												reliabilite : {
													title : 'R',
													width : '3%',
													list : true,
												},
												reliabiliteInt : {
													title : 'R I',
													width : '10%',
													list : true,
													sorting : false,
													display : function(data) {
														if (0 <= data.record.reliabiliteInt
																&& data.record.reliabiliteInt < 1) {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																	+ data.record.reliabiliteInt;
														} else if (1 <= data.record.reliabiliteInt
																&& data.record.reliabiliteInt < 2) {
															return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																	+ data.record.reliabiliteInt;
														} else if (2 <= data.record.reliabiliteInt
																&& data.record.reliabiliteInt <= 3) {
															return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																	+ data.record.reliabiliteInt;
														} else {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																	+ data.record.reliabiliteInt;
														}
													}
												},
												usabilite : {
													title : 'U',
													width : '3%',
													list : true,
												},
												usabiliteInt : {
													title : 'U I',
													width : '10%',
													list : true,
													sorting : false,
													display : function(data) {
														if (0 <= data.record.usabiliteInt
																&& data.record.usabiliteInt < 1) {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																	+ data.record.usabiliteInt;
														} else if (1 <= data.record.usabiliteInt
																&& data.record.usabiliteInt < 2) {
															return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																	+ data.record.usabiliteInt;
														} else if (2 <= data.record.usabiliteInt
																&& data.record.usabiliteInt <= 3) {
															return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																	+ data.record.usabiliteInt;
														} else {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																	+ data.record.usabiliteInt;
														}
													}
												},
												maintenabilite : {
													title : 'M',
													width : '3%',
													list : true,
												},
												maintenabiliteInt : {
													title : 'M I',
													width : '10%',
													list : true,
													sorting : false,
													display : function(data) {
														if (0 <= data.record.maintenabiliteInt
																&& data.record.maintenabiliteInt < 1) {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																	+ data.record.maintenabiliteInt;
														} else if (1 <= data.record.maintenabiliteInt
																&& data.record.maintenabiliteInt < 2) {
															return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																	+ data.record.maintenabiliteInt;
														} else if (2 <= data.record.maintenabiliteInt
																&& data.record.maintenabiliteInt <= 3) {
															return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																	+ data.record.maintenabiliteInt;
														} else {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																	+ data.record.maintenabiliteInt;
														}
													}
												},
												portabilite : {
													title : 'P',
													width : '3%',
													list : true,
												},
												portabiliteInt : {
													title : 'P I',
													width : '10%',
													list : true,
													sorting : false,
													display : function(data) {
														if (0 <= data.record.portabiliteInt
																&& data.record.portabiliteInt < 1) {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />   '
																	+ data.record.portabiliteInt;
														} else if (1 <= data.record.portabiliteInt
																&& data.record.portabiliteInt < 2) {
															return '<img style="vertical-align: middle;" src="./Images/moyen.png" />  '
																	+ data.record.portabiliteInt;
														} else if (2 <= data.record.portabiliteInt
																&& data.record.portabiliteInt <= 3) {
															return '<img style="vertical-align: middle;" src="./Images/good.png" /> '
																	+ data.record.portabiliteInt;
														} else {
															return '<img style="vertical-align: middle;" src="./Images/bad.png" />'
																	+ data.record.portabiliteInt;
														}
													}

												}
											}
										});
						$('#StudentTableContainer').jtable('load');
					});
</script>
</head>
<body>
	<header class="header">
		<jsp:include page="./../header/header.jsp"></jsp:include>
		<jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
	</header>
	<section id="main_content">
		<section class="content_section">
			<div class="header_sec">m&eacute;triques ,
				caract&eacute;ristiques et interpr&eacute;tation par projet</div>

			<div class="content_sec">
				<div style="text-align: center">
					<a class="buttonExport" style="float: left; width: 200px;" href="Interpclass?idp=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/left_fleche.png" /> métriques par classes </a>
					<a class="buttonExport" style="display: inline-block; width: 130px;" href="folder?id=<s:property value="idp"/>"><img style="vertical-align: middle;" src="./Images/home.png" /> menu projet</a>
					<a class="buttonExport" style="float: right; width: 200px;" href="Interpmethod?idp=<s:property value="idp"/>">métriques par m&eacute;thodes <img style="vertical-align: middle;" src="./Images/right_fleche.png" /></a>
					<br />
					<br />
					<br />
				</div>

				<h3 style="text-align: center;">1- L'évolution des
					caract&eacute;ristiques au cours du temps :</h3>
				<section id="form_" style="text-align: center;">
					<img src="caracteristiques.action" />
				</section>

				<div style="text-align: center;">
					<h3>Analyse des caract&eacute;ristiques,
						Sub-caract&eacute;ristiques, propri&eacute;t&eacute;s,et
						m&eacute;triques</h3>

					<div id="StudentTableContainer"></div>
					<br />
					<span style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> WMC :</span> La
						somme de la complexité cyclomatique de McCabe pour toutes les
						méthodes de la classe.
					</span	>

					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> CA :</span> Le
						nombre de classes hors d'une package qui dépendent d'une classe
						dans le package.
					</p>
					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> CE : </span> Le
						nombre de classes dans un package qui dépendent d'une classe d'un
						autre package.
					</p>
					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;">
							Instability (RMI) :</span> Ce nombre vous donnera l'instabilité de votre
						projet. C'est-à-dire les dépendances entre les paquets.
					</p>
					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> Depth of
							Inheritance Tree (DIT) :</span> Distance jusqu'à la classe Object dans
						la hiérarchie d'héritage.
					</p>
					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> Number of
							Methods (NOM) :</span> Le nombre de méthodes dans l'élément sélectionné.
					</p>
					<p style="text-align: left; font-size: 14px;">
						<span style="color: blue; font-weight: bolder;"> Distance
							(RMD) :</span> Ce nombre devrait être petit, proche de zéro pour
						indiquer une bonne conception des parquets.
					</p>
				</div>



			</div>




		</section>

	</section>

	<footer>
		<jsp:include page="./../footer/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript">
				$(document).ready(function () {
					
					$('#Interp').attr('class', 'CmenuActive');
					$('#Interp img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#Interp').show();
				});
			</script>
	<script type="text/javascript">
		function selectAll() {
			for (var i = 0; i < fileUpload_users_chosen_ID.options.length; i++) {
				fileUpload_users_chosen_ID.options[i].selected = true;
			}
		}
	</script>
</body>
</html>
