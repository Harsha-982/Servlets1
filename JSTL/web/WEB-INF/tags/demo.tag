<%@tag language="java" pageEncoding="ISO-8859-1" %>
<%@ attribute name="parameter" required="true" description="one attribute is required" %>
<%@ attribute name="intparameter" required="false" description="attribute paramter int" type="java.lang.Integer" %>
<%--if required is true then parameter will become essential..--%>
<%--we add description to see the description of the tag when we hover up on it--%>
<strong>Testing custom tag...</strong>
<br>
${parameter}
