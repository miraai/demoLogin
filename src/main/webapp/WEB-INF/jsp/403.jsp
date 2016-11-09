<%-- 
    Document   : 403
    Created on : Nov 9, 2016, 9:56:16 AM
    Author     : ajlos
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <body>
        <h1>Nije ti dozvoljeno da vidis ovu stranu</h1>
        <c:choose>
            <c:when test="${empty username}">
                <h2>Uloguj se</h2>
            </c:when>
            <c:otherwise>
                <h2>Korisnice ${username} <br/>nije ti dozvoljeno da
                    vidis ovu stranu!</h2>
                </c:otherwise>
            </c:choose>
    </body>
</html>
