<%-- 
    Document   : hello
    Created on : Nov 9, 2016, 9:56:54 AM
    Author     : ajlos
--%>

<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>Zdravo, korisnice!</h1>
        <h1> ${message}</h1>
        <sec:authorize access="hasRole('ROLE_USER')">
            <c:url value="/j_spring_security_logout"
                   var="logoutUrl" />
            <form action="${logoutUrl}" method="post"
                  id="logoutForm">
                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form>
            <script>
                function formSubmit() {
                    document.getElementById("logoutForm").submit();
                }
            </script>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                  <h2>
                      Vase korisnicko ime je :
                      ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()">Logout</a>
                  </h2>
            </c:if>
        </sec:authorize>
    </body>
</html>