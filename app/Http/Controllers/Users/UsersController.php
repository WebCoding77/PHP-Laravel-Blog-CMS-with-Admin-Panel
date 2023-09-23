<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use App\Models\post\PostModel;

use Auth;


class UsersController extends Controller
{
    
    public function editProfile($id) {

        $user = User::find($id);

        if(auth()->user()) {

            if(Auth::user()->id == $user->id) {
                return view('users.update-profile', compact('user'));

            } else {
                return abort('404');
            }
        }  else {
            return abort('404');
        }

    }

    public function updateProfile(Request $request, $id) {
        $updateProfile = User::find($id);

        Request()->validate([
            'name' => 'required|max:20',
            'email' => 'required|max:20',
            'bio' => 'required|max:300',
        ]);

        
        $updateProfile->update($request->all());

        if($updateProfile) {
            return redirect('posts/index')->with('update.user', 'User Info Updated Successfully');

        }
    }


    public function profile($id) {
        $profile = User::find($id);
        $latestPosts = PostModel::where('user_id', $id)
         ->take(4)
         ->orderBy('created_at', 'desc')
         ->get();

        return view('users.profile', compact('profile', 'latestPosts'));


    }
}
