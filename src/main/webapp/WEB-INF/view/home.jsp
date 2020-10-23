<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%--
  Author: Mostafijur Rahman
  Date: 10/22/2020
  Time: 4:07 PM
--%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>ToDo Manager </title>
</head>
<body>
<div class="container mt-3">
    <h1 class="text-center">Todo Manager Dashboard</h1>
    <hr>
    <div class="row mt-5">

        <div class="col-md-2">

            <div class="list-group text-center">
                <a href="#" class="list-group-item list-group-item-action active">
                    Menu List </a>
                <a href="add" class="list-group-item list-group-item-action"> Add</a>
                <a href="home" class="list-group-item list-group-item-action">View</a>

            </div>
        </div>

        <div class="col-md-10">

            <c:if test="${page=='home'}">
                <h2 class="text-center"> List of All Todo</h2>
                <div class="card">
                    <div class="card-body">
                        <h3><c:out value="${too.title}"/></h3>
                        <p><c:out value="${too.content}"/></p>
                        <p><c:out value="${too.date}"/></p>

                    </div>
                </div>
            </c:if>


            <c:if test="${page=='add'}">
                <h2 class="text-center">Add New todo</h2>
                <br>

                <form:form action="save" method="post" modelAttribute="todo">

                    <div class="form-group">
                        <input type="text" class="form-control" name="title" placeholder="Title of the todo">
                    </div>


                    <div class="form-group">
                        <input type="text" class="form-control" name="content" cssStyle="height:300px;"
                               placeholder="Details of the todo list">

                    </div>

                    <div class="container text-center">
                        <input class="btn btn-outline-success" type="submit" value="Add Todo">

                    </div>

                </form:form>

            </c:if>


        </div>

    </div>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>