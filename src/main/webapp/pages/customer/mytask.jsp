<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jobs Plainer</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<header class="page_header" id="page_header">
    <h1>Jobs Plainer</h1>
    <nav class="page_nav" id="page_nav">
        <a class="button" href="${pageContext.request.contextPath}/customer/newtask">New technical task</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/myscoring">My scoring</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/mytask">My technical task</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/singout">SingOut</a>
    </nav>
</header>

<section class="main_section" id="main_section">
    <article>
        <header id="section_header">
        </header>
        <section class="workspace">
            <h2 class="workspace-header">My tasks</h2>

            <form method="post" action="">
                <c:forEach var="progect" items="${Tasks}">
                    <p>Id :
                        <input name="textfield" type="text" value="<c:out value="${progect.id}"/>" disabled></p>
                    <p>Name :
                        <input name="textfield" type="text" value="<c:out value="${progect.name}"/>" disabled></p>
                    <p>Description :
                        <input name="textfield" type="text" value="<c:out value="${progect.description}"/>" disabled>
                    </p>
                    <c:forEach var="projectJob" items="${progect.technicalTaskJobList}">
                        <p>Tasks job</p>
                        <p>Name :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.name}"/>" disabled>
                        </p>
                        <p>Description :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.description}"/>"
                                   disabled></p>
                        <p>Developer level :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.developerLevel}"/>"
                                   disabled></p>
                    </c:forEach>
                </c:forEach>
            </form>
        </section>
    </article>
</section>

<footer id="page_footer">
    <p>2016 by D.Perestoronin</p>
</footer>
</body>
</html>
