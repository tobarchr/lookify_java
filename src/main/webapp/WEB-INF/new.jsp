<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">    
    <title>New Song</title>
</head>
<body>
    <div class="container mx-auto mt-5" style="width: 500px;">
        <h1>New Song</h1>
        <form:form action="/songs" method="post" modelAttribute="song">
            <div class="form-group mb-3">
                <form:label path="title" class="form-label">Title:</form:label>
                <form:errors path="title" class="form-text"></form:errors>
                <form:input path="title" class="form-control"></form:input>
            </div>
            <div class="form-group mb-3">
                <form:label path="artist" class="form-label">Artist:</form:label>
                <form:errors path="artist" class="form-text"></form:errors>
                <form:input path="artist" class="form-control"></form:input>
            </div>
            <div class="form-group mb-3">
                <form:label path="rating" class="form-label">Rating:</form:label>
                <form:errors path="rating" class="form-text"></form:errors>
                <form:input path="rating" class="form-control" type="number"></form:input>
            </div>
            <button type="submit" class="btn btn-primary">Add Song</button>
        </form:form>
    </div>
</body>
</html>