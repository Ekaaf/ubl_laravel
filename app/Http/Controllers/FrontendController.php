<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\RegDentalCamp;
use App\Models\Contactus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Hash;

class FrontendController extends Controller
{   
    public function postlogin(Request $request)
    {   
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')-> accessToken; 
            $success['user'] =  $user;
            return response()->json($success);
            // return $this->sendResponse($success, 'User login successfully.');
        } 
        else{ 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }

    public function signUp(Request $request){
        $response = [];
        if(User::where('email',$request->input('email'))->count()>0){
            $response['success'] = true;
            $response['message'] = "Email already exists";
        }
        else{
            $user = new User();
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->password = Hash::make($request->input('password'));
            $user->role_id = $request->input('role_id');
            $user->save();

            $response['success'] = true;
            $response['message'] = "Sign Up successfull.";    
        }
        
        return response()->json($response);
    }

    public function regDentalCamp(Request $request){
        $response = [];
        $regDentalCamp = new RegDentalCamp();
        $regDentalCamp->reg_name = $request->input('reg_name');
        $regDentalCamp->reg_email = $request->input('reg_email');
        $regDentalCamp->reg_phone = $request->input('reg_phone');
        $regDentalCamp->reg_type = $request->input('reg_type');
        $regDentalCamp->reg_info = $request->input('reg_info');

        $regDentalCamp->save();
        $response['success'] = true;
        $response['message'] = "Registartion successfull.";
        return response()->json($response);
    }


    public function saveContactUs(Request $request){
        $response = [];
        $contactus = new Contactus();
        $contactus->contact_name = $request->input('contact_name');
        $contactus->contact_email = $request->input('contact_email');
        $contactus->contact_number = $request->input('contact_number');
        $contactus->contact_message = $request->input('contact_message');

        $contactus->save();
        $response['success'] = true;
        $response['message'] = "Your contact information submitted successfully.";
        return response()->json($response);
    }


    public function updateDoctor(Request $request){
        dd('test');
    }
}	
