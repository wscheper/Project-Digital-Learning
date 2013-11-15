<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>${update == true ? 'Edit' : 'Create'} Work Experience</title>
        <link href="/WEBappMVCMavenSolution/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h2>${update == true ? 'Edit' : 'Create'} Work Experience</h2>
        <c:if test="${errors != null}">
            <!-- Mochten er errors zijn, dan worden ze hier getoond -->
            <p>${errors}</p>
        </c:if>
        <c:choose>
            <c:when test="${id == null}">
                <form id="newWork" action="new" method="post">
                </c:when>
                <c:otherwise>
                    <form id="editWork" action="edit" method="post">
                    </c:otherwise>
                </c:choose>
                <c:if test="${id != null}">
                    <!-- Het id wordt meegestuurd -->
                    <input type="hidden" name="id" id="id" value="${id}"></input>
                </c:if>
                <table border="0">
                    <tr>
                        <td>
                            <label for="fromYear">From</label>
                        </td>
                        <td>
                            <input type="textfield" id="fromYear" name="fromYear" value="${fromYear}"></input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="tillYear">Till</label>
                        </td>
                        <td>
                            <input type="textfield" id="tillYear" name="tillYear" value="${tillYear}"></input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name</label>
                        </td>
                        <td>
                            <input type="textfield" id="name" name="name" value="${name}"></input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="profession">Profession</label>
                        </td>
                        <td>
                            <input type="textfield" id="profession" name="profession" value="${profession}"></input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="description">Description</label>
                        </td>
                        <td>
                            <input type="textfield" id="description" name="description" value="${description}"></input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="userId">User</label>
                        </td>
                        <td>
                            <select id="user" name="user" >
                                <c:forEach var="tempWork" items="${workList}">
                                    <option value="${tempWork.userId}">${tempWork.firstname} ${tempWork.lastname}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                </table>
                <p>
                    <input class="submit" type="submit" value="Verzenden">
                </p>
            </form>
    </body>
</html>