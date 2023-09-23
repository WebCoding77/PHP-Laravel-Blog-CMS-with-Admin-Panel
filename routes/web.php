<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\posts\PostsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Route::get('/', [App\Http\Controllers\posts\PostsController::class, 'index'])->name('welcome');

Route::get('/home', [App\Http\Controllers\posts\PostsController::class, 'index'])->name('home');
Route::get('/contact', [App\Http\Controllers\posts\PostsController::class, 'contact'])->name('contact');
Route::get('/about', [App\Http\Controllers\posts\PostsController::class, 'about'])->name('about');

Route::group(['prefix' => 'posts'], function() {

    Route::get('/index', [App\Http\Controllers\posts\PostsController::class, 'index'])->name('posts.index');
    Route::get('/single/{id}', [App\Http\Controllers\posts\PostsController::class, 'single'])->name('posts.single');
    Route::post('/comment-store', [App\Http\Controllers\posts\PostsController::class, 'storeComment'])->name('comment.store');
    Route::get('/create-post', [App\Http\Controllers\posts\PostsController::class, 'CreatePost'])->name('posts.create');
    Route::post('/post-store', [App\Http\Controllers\posts\PostsController::class, 'storePost'])->name('posts.store');
    Route::get('/post-delete/{id}', [App\Http\Controllers\posts\PostsController::class, 'deletePost'])->name('posts.delete');
    
    
    
    //update
    Route::get('/post-edit/{id}', [App\Http\Controllers\posts\PostsController::class, 'editPost'])->name('posts.edit');
    Route::post('/post-update/{id}', [App\Http\Controllers\posts\PostsController::class, 'updatePost'])->name('posts.update');
    Route::any('/search', [App\Http\Controllers\posts\PostsController::class, 'search'])->name('posts.search');

});


Route::group(['prefix' => 'categories'], function() { 

    Route::get('/category/{name}', [App\Http\Controllers\categories\CategoriesController::class, 'category'])->name('category.single');



});


Route::group(['prefix' => 'users'], function() {
    Route::get('/edit/{id}', [App\Http\Controllers\Users\UsersController::class, 'editProfile'])->name('users.edit');
    Route::any('/update/{id}', [App\Http\Controllers\Users\UsersController::class, 'updateProfile'])->name('users.update');
    Route::get('/profile/{id}', [App\Http\Controllers\Users\UsersController::class, 'profile'])->name('users.profile');

    
});


Route::get('admin/login', [App\Http\Controllers\Admins\AdminsController::class, 'viewLogin'])->name('admins.login')->middleware('checkforauth');
Route::post('admin/login', [App\Http\Controllers\Admins\AdminsController::class, 'checkLogin'])->name('admins.check.login');

Route::group(['prefix' => 'admin', 'middleware' => 'auth:admin'], function() {
    //admins
    Route::get('/', [App\Http\Controllers\Admins\AdminsController::class, 'index'])->name('admins.dashboard');
    Route::get('/show-admins', [App\Http\Controllers\Admins\AdminsController::class, 'admins'])->name('admins.show');
    Route::get('/create-admins', [App\Http\Controllers\Admins\AdminsController::class, 'createAdmins'])->name('admins.create');
    Route::post('/create-admins', [App\Http\Controllers\Admins\AdminsController::class, 'storeAdmins'])->name('admins.store');

    //categories
    Route::get('/show-categories', [App\Http\Controllers\Admins\AdminsController::class, 'categories'])->name('categories.show');
    Route::get('/create-categories', [App\Http\Controllers\Admins\AdminsController::class, 'createCategories'])->name('categories.create');
    Route::post('/create-categories', [App\Http\Controllers\Admins\AdminsController::class, 'storeCategories'])->name('categories.store');
    Route::get('/delete-categories/{id}', [App\Http\Controllers\Admins\AdminsController::class, 'deleteCategories'])->name('categories.delete');
    Route::get('/edit-categories/{id}', [App\Http\Controllers\Admins\AdminsController::class, 'editCategories'])->name('categories.edit');
    Route::post('/update-categories/{id}', [App\Http\Controllers\Admins\AdminsController::class, 'updateCategories'])->name('categories.update');


    //posts
    Route::get('/show-posts', [App\Http\Controllers\Admins\AdminsController::class, 'posts'])->name('posts.show');
    Route::get('/delete-posts/{id}', [App\Http\Controllers\Admins\AdminsController::class, 'deletePosts'])->name('posts.delete');


});



