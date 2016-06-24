<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:form action="del" method="post" cssClass="listUserTable">
<table class="listUserTable">
<thead>
<tr>
<th scope="col">Nom</th>
<th scope="col">Prenom</th>
<th scope="col">Email</th>
<th scope="col">Téléphone</th>
<th scope="col">Statut</th>
<th scope="col">Identifiant</th>
<th scope="col"><s:submit type="image" value="Supprimer la selection" src="./Images/supprimer_checkbox.png" onclick="return numberOfChecked();" theme="simple"></s:submit>
</th>
<th scope="col"></th>
<th scope="col"></th>
</tr>
</thead>
<s:iterator value="userList" var="user">
<tr>
<td><s:property value="nom"/></td>
<td><s:property value="prenom"/></td>
<td><s:property value="emailId"/></td>
<td><s:property value="telephone"/></td>
<td><s:property value="statut"/></td>
<td><s:property value="userLogin"/></td>
<td><s:checkbox name="del" fieldValue="%{id}" theme="simple" cssClass="checkbox"/></td>
<td><a href="getSpecificUser?id=<s:property value="id"/>"><img alt="Modifier" src="./Images/modifier.png"> </a></td> 
<td><a href="delete?id=<s:property value="id"/>"> <img src="./Images/supprimer.png" alt="supprimer" onclick="return confirm('êtes-vous sûr de vouloir supprimer cet utilisateur?');"> </a></td> 
<s:if test="del"></s:if>
</tr>	
</s:iterator>
</table>
<script>
function numberOfChecked(){
var numberOfChecked = $('input:checkbox:checked').length;
if (numberOfChecked == 0){
alert("Veuillez séléctionner des utilisateurs à supprimer !");
return false;
}else{
confirm("êtes vous sûr de vouloir supprimer "+numberOfChecked+" utilisateurs?");
}
}
</script>
</s:form>