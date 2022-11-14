<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Family</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
</head>
<body>
<div class="text-bg-secondary p-3">

    <div class="container text-center">
        <div class="row align-items-center">
            <div class="col-9">

                <h3>

                    ${question}
                    <br>
                    Что выберем?
                </h3>
                <br>

                <h3>
                    <form>
                        <input type="hidden" name="username" value="${username}" hidden>
                        <input type="hidden" name="counter" value="${counter}" hidden>

                        <c:forEach var="answersList" items="${answers}">
                            <c:if test="${answersList.fidelityAnswer}">
                                <input type="radio" name="nextQuestion" value="${idNextQuestion}"> ${answersList.answer}
                                <br>
                            </c:if>

                            <c:if test="${!answersList.fidelityAnswer}">
                                <input type="hidden" name="whyfailure" value="${whyfailure}">
                                <input type="radio" name="nextQuestion" value="wrong"> ${answersList.answer}
                                <br>
                            </c:if>
                        </c:forEach>

                        <input type="submit" value="ответить">
                    </form>
                </h3>
            </div>

            <div class="col-3">
                <img class="w-100" srcset="${image}" alt="family">
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous">

    </script>
</div>
</body>
</html>
