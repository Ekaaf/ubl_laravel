<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('postlogin', [FrontendController::class, 'postlogin']);
Route::post('signUp', [FrontendController::class, 'signUp']);
Route::post('regDentalCamp', [FrontendController::class, 'regDentalCamp']);
Route::post('saveContactUs', [FrontendController::class, 'saveContactUs']);

Route::middleware('auth:api')->group( function () {
	Route::post('updateDoctor', [FrontendController::class, 'updateDoctor']);

	
	Route::get('/test', array('as' => 'test', 'uses' => 'FrontendController@test'));
	Route::post('/item', array('as' => 'getmainimage', 'uses' => 'FrontendController@getMainImage'));
});

