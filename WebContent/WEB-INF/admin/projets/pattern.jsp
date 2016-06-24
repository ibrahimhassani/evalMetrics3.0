<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Eval Metrics | Design Patterns</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./StylesSheets/Style.css" rel="stylesheet" type="text/css">
        <script src="./Scripts/jquery-1.8.3.js"></script>
		<script src="./Scripts/jquery.js" type="text/javascript"></script>
		<script src="./Scripts/jquery-ui.custom.js" type="text/javascript"></script>
		<script src="./Scripts/jquery.cookie.js" type="text/javascript"></script>
		<link href="./skin/ui.dynatree.css" rel="stylesheet" type="text/css" id="skinSheet">
		<script src="./Scripts/jquery.dynatree.js" type="text/javascript"></script>
		<script src="./Scripts/treeScript.js" type="text/javascript"></script>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="title" content="Samples" />
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" href="./StylesSheets/treeStyle.css" type="text/css" media="screen" />

	</head>
	<body>
        <header class="header">
         <jsp:include page="./../header/header.jsp"></jsp:include>
         <jsp:include page="./../header/CmenuProjets.jsp"></jsp:include>
		</header>
		
		<!--  here starts tree content -->
		
        <div class="content">
            
            <link rel="STYLESHEET" type="text/css" href="./StylesSheets/dhtmlxtree.css">
	<script  src="./Scripts/dhtmlxcommon.js"></script>
	<script  src="./Scripts/dhtmlxtree.js"></script>	
	
	<script>
		function setDesign(n){
			switch(n){
			case 4:
				tree.enableTreeLines(true);
				tree.setImageArrays("plus","plus2.gif","plus3.gif","plus4.gif","plus.gif","plus5.gif");
				tree.setImageArrays("minus","minus2.gif","minus3.gif","minus4.gif","minus.gif","minus5.gif");
				tree.setStdImages("book.gif","books_open.gif","books_close.gif");					
				break;
	
			    break;
			case 3:
				tree.enableTreeLines(true);
				tree.setImageArrays("plus","open2.gif","open2.gif","open2.gif","open2.gif","open2.gif");
				tree.setImageArrays("minus","close2.gif","close2.gif","close2.gif","close2.gif","close2.gif");
				tree.setStdImages("leaf.gif","folderOpen.gif","folderClosed.gif");					
				break;
			case 2:
				tree.enableTreeLines(true);
				tree.setImageArrays("plus","open2.gif","open2.gif","open2.gif","open2.gif","open2.gif");
				tree.setImageArrays("minus","close2.gif","close2.gif","close2.gif","close2.gif","close2.gif");
				tree.setStdImages("book.gif","books_open.gif","books_close.gif");					
				break;
			case 1:
				tree.enableTreeLines(false);
				tree.setImageArrays("plus","","","","plus_ar.gif","plus_ar.gif");
				tree.setImageArrays("minus","","","","minus_ar.gif","minus_ar.gif");
				tree.setStdImages("book.gif","books_open.gif","books_close.gif");					
				break;
			}
			tree.refreshItem(0);
		}
	</script>
	<script>
function setColor(color1, color2); {
    tree.setItemColor(tree.getSelectedItemId(), color1, color2);
}
</script>

<table>
    <tr>
        <td valign="top">
            <div id="treeboxbox_tree" ></div>
        </td>
        <td rowspan="2" style="padding-left:35px" valign="top">
        
        &nbsp;<input  style="padding: 5px 5px;width: 250px;background: #FFFFFF;border: 1px double #f8f9fa;border-radius: 5px; border-color: cornflowerblue;color: #8b8989;margin-bottom: 20px;margin-top: 0px;" type="text" value="Nouveau libell&eacute;" id="ed1"/>  <a class="buttonExport" style="height: 25px; line-height: 25px;" href="javascript:void(0);" onClick="var d=new Date(); tree.setItemText(tree.getSelectedItemId(),document.getElementById('ed1').value);">Changer texte</a><br><br>
        Changer l'image de l'&eacute;l&eacute;ment s&eacute;lectionn&eacute; :
        <table>
            <tr><td>
                <a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'tombs.gif','tombs.gif','tombs.gif');"><img src="./Images/tree/tombs.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'tombs_open.gif','tombs_open.gif','tombs_open.gif');"><img src="./Images/tree/tombs_open.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'leaf.gif','leaf.gif','leaf.gif');"><img src="./Images/tree/leaf.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'leaf2.gif','leaf2.gif','leaf2.gif');"><img src="./Images/tree/leaf2.gif" border="0"></a></td>
            </td></tr>
            <tr><td nowrap>
                <a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'iconText.gif','iconText.gif','iconText.gif');"><img src="./Images/tree/iconText.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'folderOpen.gif','folderOpen.gif','folderOpen.gif');"><img src="./Images/tree/folderOpen.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'folderClosed.gif','folderClosed.gif','folderClosed.gif');"><img src="./Images/tree/folderClosed.gif" border="0"></a></td>
                <td><a href="javascript:void(0);" onClick="tree.setItemImage2(tree.getSelectedItemId(),'leaf3.gif','leaf3.gif','leaf3.gif');"><img src="./Images/tree/leaf3.gif" border="0"></a></td>
            </td></tr>                
        </table>
        <br>
        changer le th&egrave;me : <br/><br/>
       		<a class="buttonExport" style="height: 15px;line-height: 15px;width: 90px;" href="javascript:void(0)" onclick="setDesign(1);">th&egrave;me  1</a><br>
			<a class="buttonExport" style="height: 15px;line-height: 15px;width: 90px;" href="javascript:void(0)" onclick="setDesign(2);">th&egrave;me  2</a><br>
			<a class="buttonExport" style="height: 15px;line-height: 15px;width: 90px;" href="javascript:void(0)" onclick="setDesign(3);">th&egrave;me  3</a><br>
			<a class="buttonExport" style="height: 15px;line-height: 15px;width: 90px;" href="javascript:void(0)" onclick="setDesign(4);">th&egrave;me  4</a><br>
			
			</br></br>
			
			<a class="buttonExport" href="download?id=<s:property value="id"/>">Exporter XML</a>
       
        </td>
    </tr>
</table>
	
 
	<script>
			tree=new dhtmlXTreeObject("treeboxbox_tree","100%","100%",0);

			tree.setSkin('dhx_skyblue');
			tree.setImagePath("./Images/tree/");
			tree.enableDragAndDrop(0);
			tree.enableTreeLines(false);
			tree.setImageArrays("plus","","","","plus.gif");
			tree.setImageArrays("minus","","","","minus.gif");
			tree.setStdImages("book.gif","books_open.gif","books_close.gif");	
			tree.setXMLAutoLoading("./skin/designtree.xml");
			tree.loadXML("./skin/designtree.xml");
	</script>
			
			
    </div>
    <div style="clear:both;"></div>
    
     <footer>
	 <jsp:include page="./../footer/footer.jsp"></jsp:include>
</footer>
<script type="text/javascript">
				$(document).ready(function () {
					//cmenu
					$('.CmenuActive').attr('class', 'CmenuInactive');
					$('#Design_Patterns').attr('class', 'CmenuActive');
					$('#Design_Patterns img').attr('src', './Images/content_header_menu_active_puce.png');
					$('#Design_Patterns').show();

				});
			</script>   
   
	</body>
</html>