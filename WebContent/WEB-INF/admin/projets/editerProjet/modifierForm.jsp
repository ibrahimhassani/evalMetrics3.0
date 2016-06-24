<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:actionerror cssClass="formError"/>
<s:iterator value="fileList">
 <s:form action="modifierProjet"  method="post" cssClass="formAddMod" validate="true" theme="simple">
 		<s:hidden name="myFile.id" value="%{id}"></s:hidden>
									<table>
										<tr>
											<td>
												<s:label value="Nom du projet " theme="simple"></s:label>
												<s:textfield name="myFile.name" value="%{name}" cssClass="formInput" label="Nom du projet" theme="simple"/>
											</td>
										</tr>
										<tr>
											<td>
												<s:label value="Chemin" theme="simple"></s:label>
												<s:textfield name="myFile.folder" value="%{folder}" cssClass="formInput" label="dossier" theme="simple"/>
											</td>
										</tr>
										<tr>
											<td>
												<s:label value="Utilisateurs" theme="simple"></s:label>
												<s:select label="Utilisateurs"
											        name="users"
											        list="users"
											        listKey="id"
											        listValue="userLogin"
											        multiple="true"
											        size="10"
											        required="true"
											        theme="simple"
											        cssClass="selectUsers"
											     />
											     <s:a href="#" onclick="listbox_moveacross('modifierProjet_users', 'modifierProjet_users_chosen_ID')"> <img  src="./Images/right_fleche.png"/></s:a>
												 <s:a href="#" onclick="listbox_moveacross('modifierProjet_users_chosen_ID', 'modifierProjet_users')"> <img  src="./Images/left_fleche.png"/></s:a> 
											     <s:select label="Utilisateurs"
											        name="users_chosen_ID"
											        list="users_chosen"
											        listKey="id"
											        listValue="userLogin"
											        multiple="true"
											        size="10"
											        required="true"
											        theme="simple"
											        cssClass="selectUsers" 
											     />
											  </td>
										</tr>
										<tr>
											<td>
										     	<s:submit type="submit" value="Modifier" align="center" cssClass="submit" labelposition="right" theme="simple" onclick="return selectAll();"/>
											</td>
										</tr>
									</table>
								</s:form>
</s:iterator>
