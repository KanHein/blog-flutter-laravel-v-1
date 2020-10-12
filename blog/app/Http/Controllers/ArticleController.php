<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Article::all();
    }
    public function detail($id){
        $article = Article::find($id);
        return view('admin.article-detail',compact('article'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.admin-home');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = validator($request->all(),[
            'title' => 'required',
            'body' => 'required'
        ]);
        if($validator->fails()){
            return back()->widthErrors($validator);
        }
        $article = new Article();
        $article->title = $request->title;
        $article->body = $request->body;
        $article->save();
        return redirect('/admin');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $articles = Article::all();
        return view('admin.article-lists',compact('articles'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $article = Article::find($id);
        return view('admin.article-edit',compact('article'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = validator($request->all(),[
            'title' => 'required',
            'body' => 'required'
        ]);
        if($validator->fails()){
            return back()->widthErrors($validator);
        }
        $article = Article::find($id);
        $article->title = $request->title;
        $article->body = $request->body;
        $article->save();

        $article = Article::find($id);
        return view('admin.article-detail',compact('article'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        //
    }
}