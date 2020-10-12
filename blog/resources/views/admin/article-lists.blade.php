@extends('admin.layout')

@section('main')
    <main class="article-lists-main">
        <ul class="article-list">
            @foreach($articles as $article)
                <li class="article-item"> 
                    <p class="list-title">{{$article->title}}</p>
                    <div class="btn-group">
                        <a href="{{url('/detail')}}/{{$article->id}}" class="btn-detail">read</a>
                        <a href="{{url('/edit')}}/{{$article->id}}" class="btn-edit">edit</a>
                        <a href="/delete" class="btn-delete">delete</a>
                    </div>
                </li>
            @endforeach
        </ul>
    </main>
@endsection