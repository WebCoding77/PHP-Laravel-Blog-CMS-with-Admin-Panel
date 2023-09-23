@extends('layouts.app')

@section('content')
<div class="container">
    <div class="comment-form-wrap pt-5">
       

        <h3 class="mb-5">Update Post</h3>
        <form action="{{ route('posts.update', $single->id) }}" method="POST" class="p-5 bg-light" enctype="multipart/form-data">
        @csrf
            <div class="form-group">
                <label for="title">Title</label>

                <input type="text" placeholder="title" value="{{ $single->title }}" name="title"  class="form-control" id="website">
            </div>
            @error('title')
                <span class="text-danger" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            <div class="form-group">

                <select name="category" class="form-select" aria-label="Default select example">
                    <option selected>Categories</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category->name }}">{{ $category->name }}</option>

                    @endforeach
                </select>
            </div>
            @error('category')
                <span class="text-danger" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
      
           

            <div class="form-group">
                <label for="message">Description</label>
                <textarea  placeholder="Description" name="description"  cols="30" rows="10" class="form-control">
                    {{ $single->description }}
                </textarea>
            </div>
            @error('description')
                <span class="text-danger" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror

            <div class="form-group">
             <input type="submit" name="submit" value="Update Post" class="btn btn-primary">
            </div>

        </form>
    </div>
</div>
@endsection