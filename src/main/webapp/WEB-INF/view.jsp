<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">    
    <title>Song Details</title>
</head>
<body>
    <div class="Container">
        <div class="row mt-4">
            <div class="col-7"></div>
            <div class="col-5">
                <h2><a href="/dashboard">Dashboard</a></h2>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-3">
            </div>
            <div class="col-4">
                <h1>Title:</h1>
            </div>
            <div class="col-5">
                <h1><c:out value="${songInfo.title}"/></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-4">
                <h1>Artist:</h1>
            </div>
            <div class="col-5">
                <h1><c:out value="${songInfo.artist}"/></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-4">
                <h1>Rating (1-10):</h1>
            </div>
            <div class="col-5">
                <h1><c:out value="${songInfo.rating}"/></h1>
            </div>
        </div>
    </div>
</body>
</html>