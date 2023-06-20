<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Affiche ville</title>
    <style>
        table
        {
            border-collapse: collapse;
        }
        td, th
        {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <div>
        <table>
            <caption>Liste des villes</caption>

            <tr>
                <th>Code INSEE</th>
                <th>Commune</th>
                <th>Code Postal</th>
                <th>Libelle Acheminement</th>
                <th>Ligne 5</th>
                <th>Longitude</th>
                <th>Latitude</th>

            </tr>
            <c:forEach items="${villesAffichees}" var="ville">
                <tr>
                    <td>${ville.getCodeINSEE()}</td>
                    <td>${ville.getCommune()}</td>
                    <td>${ville.getCodePostal()}</td>
                    <td>${ville.getLibelleAcheminement()}</td>
                    <td>${ville.getLigne5()}</td>
                    <td>${ville.getLongitude()}</td>
                    <td>${ville.getLatitude()}</td>
                </tr>
            </c:forEach>
        </table>

        <form method = "post" action="ListeVille">
            <c:forEach var="i" begin="1" end="68">
                <c:if test="${numPage != i}">
                    <input type="submit" type="hidden" name="numPage" id="numPage" value="${i}">
                </c:if>
                <c:if test="${numPage == i}">
                    <input type="submit" disabled type="hidden" name="numPage" id="numPage" value="${i}">
                </c:if>

            </c:forEach>
        </form>

    </div>
</body>
</html>
