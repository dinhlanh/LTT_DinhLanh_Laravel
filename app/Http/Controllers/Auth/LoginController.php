<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\MessageBag;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    // public function username()
    // {
    //     return 'username';
    // }

    public function logout(){
        Auth::logout();
        return redirect()->route('login');
    }

    public function showLoginForm()
    {
        return view('backend.auth.login');
    }

    public function login(Request $request)
    {
        $validator = \Validator::make($request->all(),
            [
                'mail_address' => 'bail|required|email',
                'password' => 'bail|required|min:8',
            ],
            [
                'required' => ':attribute Không được để trống',
                'mail_address' => ':attribute không đúng định dạng',
                'min' => ':attribute Không được nhỏ hơn :min ký tự',
            ],
            [
                'email' => 'Email',
                'password' => 'Mật khẩu',
            ]
        );
        if ($validator->fails()){
            return back()
                ->withErrors($validator)
                ->withInput();
        }

        // dd('scscs');
        $email = $request->get('mail_address');
        $password = $request->get('password');
        
        // dd('ssss');
        if (Auth::attempt(['mail_address' => $email, 'password' => $password,'role'=>1])) {
            // Authentication passed...
            if(Auth::user()->role == 1){
                return redirect()->route('users.index');
            }else{
                return $this->sendFailedLoginResponse($request);
            }
            return redirect()->route('dashboard');
        }
        else if (Auth::attempt(['mail_address' => $email, 'password' => $password,'role'=>0])) {
            // Authentication passed...
            return redirect()->route('users.dashboard');
        }else{
            return back()->with('error','Email hoặc mật khẩu không chính xác');
        }
    }
}
