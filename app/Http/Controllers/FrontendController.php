<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\RegDentalCamp;
use App\Models\Contactus;
use App\Models\Doctor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Hash, DB;

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
            $user->name = $request->input('signup_name');
            $user->email = $request->input('email');
            $user->phone_number = $request->input('signup_phone');
            $user->password = Hash::make($request->input('password'));
            $user->role_id = $request->input('role_id');
            $user->save();

            if($request->input('role_id')==2){
                $doctor = new Doctor();
                $doctor->user_id = $user->id;
                $doctor->save();
            }
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

    public function getDoctorInfo(Request $request){
        $doctor = DB::table('users')
                    // ->select('users.id as id', 'users.name as name','users.email as email', 'users.phone_number as phone_number', 'doctors.chamber_name', 'doctors.chamber_address','doctors.designation','doctors.organization','doctors.bmdc_number', 'doctors.specialization')
                    ->join('doctors','users.id','=','doctors.user_id')
                    ->where('users.id', $request->input('id'))
                    ->get();
        return response()->json($doctor);
    }

    public function updateDoctor(Request $request){
        $response = [];
        // dd($request->input());
        $user = User::find($request->input('doctor_id'));
        $user->name = $request->input('doctor_name');
        $user->phone_number = $request->input('doctor_phone');
        $user->email = $request->input('doctor_email');
        $user->save();
        $imageUrl = "";
        if($request->file()){
            $file = $request->file('image');
            $file->move('public/images/doctor/',$file->getClientOriginalName());
            $imageUrl = "public/images/doctor/".$file->getClientOriginalName();
            Doctor::where('user_id',$request->input('doctor_id'))
                        ->update(['imagelink' => $imageUrl]);
        }
        $doctor = Doctor::where('user_id',$request->input('doctor_id'))
                        ->update(['designation' => $request->input('doctor_designation'),'organization' => $request->input('doctor_institution'),'bmdc_number' => $request->input('bmdc_number'),'specialization' => $request->input('specialization'), 'chamber_name' => $request->input('doctor_chamber_name'), 'chamber_address' => $request->input('doctor_chamber_address')]);

        // dd($user);
        $response['success'] = true;
        $response['message'] = "Doctor information updated successfully";
        return response()->json($response);
    }


    public function getUserInfo(Request $request){
        $user = User::where('id',$request->input('id'))->get();
        return response()->json($user);
    }


    public function updateUser(Request $request){
        $response = [];
        // dd($request->input());
        $user = User::find($request->input('user_id'));
        $user->name = $request->input('user_name');
        $user->phone_number = $request->input('user_phone');
        $user->email = $request->input('user_email');
        $user->save();

        $response['success'] = true;
        $response['message'] = "User information updated successfully";
        return response()->json($response);
    }


    public function updatePassword(Request $request){
        $response = [];
        $response['success'] = true;
        // dd($request->input());
        $user = User::where('id', '=', $request->input('pass_id'))->first();
        if(Hash::check($request->input('current_pass'), $user->password)){
            $user->password = Hash::make($request->input('new_pass'));
            $user->save();
            $response['message'] = "Password Updated successfully";
        }
        else{
            $response['success'] = false;
            $response['message'] = "Current password does not match";

        }
        return response()->json($response);
    }


    public function findDoctor(Request $request){
        // dd($request->input());

        $query = DB::table('users')
                ->join('doctors','users.id','=','doctors.user_id');

        if(!is_null($request->input('location'))){
            $query->where('doctors.chamber_address', 'like', '%' . $request->input('location') . '%');
        }
        if(!is_null($request->input('name'))){
            $query->where('users.name', 'like', '%' . $request->input('name') . '%');
        }
        if(!is_null($request->input('chamber_name'))){
            $query->where('doctors.chamber_name', 'like', '%' . $request->input('chamber_name') . '%');
        }
        if(!is_null($request->input('specialization'))){
            $query->where('doctors.specialization', 'like', '%' . $request->input('specialization') . '%');
        }
        if(!is_null($request->input('phone_number'))){
            $query->where('users.phone_number', 'like', '%' . $request->input('phone_number') . '%');
        }
        $doctors = $query->get();
        // dd($doctors);
        return response()->json($doctors);
    }
}   
