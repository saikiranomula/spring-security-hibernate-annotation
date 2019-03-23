<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	
	<c:url value="/createUser" var="createUserUrl" />
	<a href="${logoutUrl}">create user</a>

<%-- 	<body>
         <h1>Create User Redirection</h1>
      <%
      	// New location to be redirected
      	String site = new String("http://www.photofuntoos.com");
      	response.setStatus(response.SC_MOVED_TEMPORARILY);
      	response.setHeader("Location", site);
      %>
   </body>	 --%>
	
	<c:url value="/logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>

</body>

</html>