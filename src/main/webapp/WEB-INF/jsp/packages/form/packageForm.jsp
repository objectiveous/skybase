<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:useAttribute name="submitPath" />
<tiles:useAttribute name="formMethod" />
<tiles:useAttribute name="instructionsCode" />
<tiles:useAttribute name="readOnly" />
<tiles:useAttribute name="cancelPath" />

<c:url var="submitUrl" value="${submitPath}" />
<c:url var="cancelUrl" value="${cancelPath}" />

<div id="instructions">
	<spring:message code="${instructionsCode}" />
</div>

<form:form cssClass="main" modelAttribute="package" action="${submitUrl}" method="post">
	<fieldset>
		<input type="hidden" name="_method" value="${formMethod}" />
		<div class="clearfix <form:errors path="groupId">error</form:errors>">
			<label for="groupId">Group ID:</label>
			<div class="input">
				<form:input cssClass="span6" cssErrorClass="span6 error" path="groupId" />
				<form:errors path="groupId">
					<span class="help-inline"><form:errors path="groupId" /></span>
				</form:errors>
			</div>
		</div>
		<div class="clearfix <form:errors path="packageId">error</form:errors>">
			<label for="packageId">Package ID:</label>
			<div class="input">
				<form:input cssClass="span6" path="packageId" />
				<form:errors path="packageId">
					<span class="help-inline"><form:errors path="packageId" /></span>
				</form:errors>
			</div>
		</div>
		<div class="clearfix <form:errors path="version">error</form:errors>">
			<label for="version">Version:</label>
			<div class="input">
				<form:input cssClass="span4" path="version" />
				<form:errors path="version">
					<span class="help-inline"><form:errors path="version" /></span>
				</form:errors>
			</div>
		</div>
		<div class="actions">
			<input class="btn primary" type="submit" value="Save" />
			<a class="btn" href="${cancelUrl}">Cancel</a>
		</div>
	</fieldset>
</form:form>