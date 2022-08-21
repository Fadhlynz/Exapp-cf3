<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Gejalahama;
use App\Models\Hama;
use App\Models\Hasilhama;
use App\Models\User;
use App\Models\History;
use App\Models\Kondisihama;
use App\Models\Setting;


class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard',[
            'title' => 'Dashboard',
            'count_user' => User::count(),
            'count_evidence' => Gejalahama::count(),
            'count_hypotesis' => Hama::count(),
            'count_history' => Kondisihama::count(),
            'histores' => Hasilhama::orderby('id','desc')->get(),
            'hypotesis' => Hama::all(),
            'history' => Hasilhama::all(),
        ]);
    }

    public function home()
    {
        return view('index',[
            'title' => 'Home',
            'setting' => Setting::find(1),
        ]);
    }

    public function login()
    {
        return view('login',[
            'title' => 'Login',
        ]);
    }

    public function login_process(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required',
            'password' => 'required|min:6|'
        ]);

        if(Auth::attempt($credentials)){
            return redirect('/dashboard');
        }
        return redirect('/login')->with('status','Login Gagal!');
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }

    public function profile()
    {
        $user = User::find(auth()->user()->id);
        return view('profile',[
            'title' => 'Profile',
            'user' => $user,
        ]);
    }

    public function profile_update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            // 'password' => 'required|min:6|confirmed',
            // 'repassword' => 'required|same:password',
        ]);

        // dd($request->all());

        User::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        return redirect('/profile')->with('status','Profile Berhasil Diupdate!');

    }
}
