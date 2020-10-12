@extends('admin.layout')

@section('main')
    <main class="form-main">
        <form method="post">
            @csrf
            <div class="form-group">
                <input type="text" name="title" placeholder="Write Title" value="{{$article->title}}">
            </div>
            <div class="form-group">
                <textarea name="body" id="paragraph" cols="30" rows="10" placeholder="Write Body...">{{$article->body}}</textarea>
            </div>
            <div class="form-group post-btn-position">
                <button type="submit" class="post-btn">update&rarr;</button>
            </div>
        </form>
    </main>
@endsection