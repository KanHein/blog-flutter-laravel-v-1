@extends('admin.layout')

@section('main')
    <main class="form-main">
        <form method="post">
            @csrf
            <div class="form-group">
                <input type="text" name="title" placeholder="Write Title" autofill="none">
            </div>
            <div class="form-group">
                <textarea name="body" id="paragraph" cols="30" rows="10" placeholder="Write Body..."></textarea>
            </div>
            <!-- <div class="form-group">
                <input type="file" name="image" id="image-upload">
            </div> -->
            <div class="form-group post-btn-position">
                <button type="submit" class="post-btn">post&rarr;</button>
            </div>
        </form>
    </main>
@endsection