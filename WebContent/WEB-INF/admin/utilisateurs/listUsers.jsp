<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<table class="listUserTable">
<thead>
	<tr>
	 	<th scope="col">Nom</th>
		<th scope="col">Prenom</th>
		<th scope="col">Email</th>
		<th scope="col">Téléphone</th>
		<th scope="col">Statut</th>
		<th scope="col">Identifiant</th>
	</tr>
</thead>
</tr>
<s:iterator value="userList" var="user">
	<tr>
		<td><s:property value="nom"/></td>
		<td><s:property value="prenom"/></td>
		<td><s:property value="emailId"/></td>
		<td><s:property value="telephone"/></td>
		<td><s:property value="statut"/></td>
		<td><s:property value="userLogin"/></td>
	</tr>	
</s:iterator>
</table>