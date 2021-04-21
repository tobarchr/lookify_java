<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">    
    <title>Dashboard</title>
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-3">
                <span class="align-middle"><a href="/songs/new">Add New</a></span>
            </div>
            <div class="col-3">
                <span class="align-middle"><a href="/songs/topTen">Top Songs</a></span>
            </div>
            <div class="col-6">
                <form method="get" action="/search/">
                    <input type="text" name="q">
                    <button type="submit" class="btn btn-secondary">Search</button>
                  </form>
            </div>
        </div>

        <table class="table mt-4">
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Rating</th>
              <th scope="col">Actions</th>
            </tr>
          </thead>
          <tbody>
              <c:forEach items="${songs}" var="s">
            <tr>
              <td><a href="/songs/${s.id}"><c:out value="${s.title}"/></a></td>
              <td><c:out value="${s.rating}"/></td>
              <td>
                <form action="/songs/${s.id}" method="post">   
                  <input type="hidden" name="_method" value="delete">           
                  <button type="submit" class="btn btn-danger">Delete</button>
                </form>
              </td>
               </tr>
              </c:forEach>
          </tbody>
        </table>
      </div>
</body>
</html>