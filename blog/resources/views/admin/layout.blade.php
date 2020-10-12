<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Admin Panel</title>
    <link rel="stylesheet" href="{{URL::asset('/css/style.css')}}">
</head>
<body class="admin-home-body">
    <nav>
        <ul class="nav-items-list">
            <li class="nav-item"><a href="{{url('/admin')}}" class="nav-link">+New</a></li>
            <li class="nav-item"><a href="{{url('/article-lists')}}" class="nav-link">All-Articles</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Comments</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Setting</a></li>
        </ul>
    </nav>
    @section('main')
    @show
</body>
</html>