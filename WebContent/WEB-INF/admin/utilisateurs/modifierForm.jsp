<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:actionerror cssClass="formError"/>
<s:iterator value="userList">
<s:form  method="post" validate="true" cssClass="formAddMod">
		<s:hidden name="user.id" value="%{id}"></s:hidden>
		<s:reset name="reset" type="image" id="reset" src="./Images/refresh.png"></s:reset> 
		<s:textfield name="user.prenom" value="%{prenom}" cssClass="formInput" cssErrorClass="input" cssErrorStyle="input" key="label.prenom" required="true"/>
		<s:textfield name="user.nom" value="%{nom}" cssClass="formInput" key="label.nom" required="true"/>
		<s:textfield name="user.emailId" value="%{emailId}" cssClass="formInput" key="label.email" required="true"/>
		<s:textfield name="user.telephone" value="%{telephone}" cssClass="formInput" key="label.telephone" required="true"/>
		<s:select name="user.statut" value="%{statut}" cssClass="formInput"
  list="#{'Chef de projet':'Chef de projet','Developpeur':'Developpeur','Audit':'Audit','Client':'Client'}" 
  key="label.statut" required="true"/>
		<s:textfield name="user.userLogin" value="%{userLogin}" cssClass="formInput" key="label.userLogin" required="true"/>
		<s:textfield name="user.userPassword" value="%{userPassword}" cssClass="formInput" key="label.userPassword" required="true"/>
		<s:submit action="modifier" key="label.modifier" align="center" cssClass="submit" labelposition="right"/>
</s:form>
</s:iterator>
