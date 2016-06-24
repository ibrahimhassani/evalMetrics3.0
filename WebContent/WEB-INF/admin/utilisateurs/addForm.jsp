<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:actionerror cssClass="formError"/>
<s:form  method="post" validate="true" cssClass="formAddMod">
		<s:reset name="reset" type="image" id="reset" src="./Images/refresh.png"></s:reset> 
		<s:textfield name="user.prenom" cssClass="formInput" cssErrorClass="input" cssErrorStyle="input" key="label.prenom" required="true"/>
		<s:textfield name="user.nom" cssClass="formInput" key="label.nom" required="true"/>
		<s:textfield name="user.emailId" cssClass="formInput" key="label.email" required="true"/>
		<s:textfield name="user.telephone" cssClass="formInput" key="label.telephone" required="true"/>
		<s:select name="user.statut" cssClass="formInput"
  list="#{'Chef de projet':'Chef de projet','Developpeur':'Developpeur','Audit':'Audit','Client':'Client'}" 
  key="label.statut" required="true"/>
		<s:textfield name="user.userLogin" cssClass="formInput" key="label.userLogin" required="true"/>
		<s:password name="user.userPassword" cssClass="formInput" key="label.userPassword" required="true"/>
		<s:submit action="add" key="label.ajouter" align="center" cssClass="submit" labelposition="right"/>
</s:form>