@extends('admin.layout')

@section('main')
    <main class="detail-main">
        <div class="detail">
            <h1 class="heading">{{$article->title}}</h1>
            <p class="paragraph">{{$article->body}}</p>
            <div class="btn-group-bottom">
                <a href="{{url('/detail')}}/{{$article->id}}" class="btn-detail">read</a>
                <a href="{{url('/edit')}}/{{$article->id}}" class="btn-edit">edit</a>
                <a href="/delete" class="btn-delete">delete</a>
            </div>
        </div>
    </main>
@endsection