<?php

class UserController extends Controller {

    public function viewRegisterForm()
    {
        return View::make('user.registration');
    }

    public function login() {
        if (Auth::attempt(array('email' => Input::get('email'), 'password' => Input::get('password'))))
        {
            return "sikeres bejelentkezés";
        } else {
            return "sikertelen";
        }
    }

    public function viewLogin() {
        return View::make('user.login');
    }

    public function register() {

        $validator = Validator::make(Input::all(), array(
            'name' => 'required',
            'password' => 'required|min:8',
            'email' => 'required|email|unique:users'));

        if ($validator->fails())
        {
            $messages = $validator->messages();
            foreach ($messages->all('<li>:message</li>') as $message)
            {
                echo $message;
            }

        } else {

            $newUser = new User();
            $newUser->fill(array('name'=>Input::get('name')
                                ,'email'=>Input::get('email')
                                ,'password'=>Hash::make(Input::get('password'))));
            $newUser->save();

            return "siker";
        }
    }

    private function validate($input) {



        return false;
    }
}