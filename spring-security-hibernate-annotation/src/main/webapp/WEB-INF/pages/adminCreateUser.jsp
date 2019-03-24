<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	
	<form class="form-style-7">
		<ul>
			<li><label for="First Name">Name</label> <input type="text"
				name="name" maxlength="100"> <span>Enter your First
					name here</span></li>
			<li><label for="Last Name">Name</label> <input type="text"
				name="name" maxlength="100"> <span>Enter your Last
					name here</span></li>
			<li><label for="User Name">Name</label> <input type="text"
				name="name" maxlength="100"> <span>Enter your User
					name here</span></li>
			<li><label for="email">Email</label> <input type="email"
				name="email" maxlength="100"> <span>Enter a valid
					email address</span></li>
			<li><label for="url">Website</label> <input type="url"
				name="url" maxlength="100"> <span>Your website
					address (eg: http://www.google.com)</span></li>
			<li><label for="bio">About You</label> <textarea name="bio"
					onkeyup="adjust_textarea(this)"></textarea> <span>Say
					something about yourself</span></li>
			<li><input type="submit" value="Send This"></li>
		</ul>
	</form>


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