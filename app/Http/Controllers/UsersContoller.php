<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersContoller extends Controller
{
    public function GetUsers(Request $request)
    {
        $users = User::paginate($request->input('limit', 10));
        return $users;
    }
    // Get Auth User
    public function authUser()
    {
        return Auth::user();
    }

    // Get Specific User
    public function getUser($id)
    {
        return User::findOrFail($id);
    }

    // Add User

    public function addUser(UserRequest $request)
    {
        $request->validated();
        $user =  User::create([
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
            'password' => Hash::make($request->password),
        ]);
        return response()->json([
            'user' => $user,
        ], 200);
    }

    // Edit User
    public function editUser(UserRequest $request, $id)
    {
        $request->validated();
        $user = User::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
            'password' => Hash::make($request->password),
        ]);

        return response()->json([
            'user' => $user,
        ], 200);
    }

    // Search On Users
    public function search(Request $request)
    {
        $query = $request->input('title');
        $results = User::where('name', 'like', "%$query%")->get();
        return response()->json($results);
    }

    // Delete User
    public function destroy($id)
    {
        return  User::findOrFail($id)->delete();
    }
}
