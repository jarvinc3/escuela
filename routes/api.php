<?php

use App\Http\Controllers\AlumnoController;
use App\Http\Controllers\AlumnoCursoController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\DocenteController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(AlumnoController::class)->group(function() {
    Route::get('/alumno', 'index');
    Route::get('/alumno/{id}', 'show');
    Route::post('/alumno', 'store');
    Route::put('/alumno/{id}', 'edit');
    Route::delete('/alumno/{id}', 'destroy');
 });

 Route::controller(DocenteController::class)->group(function() {
    Route::get('/docente', 'index');
    Route::get('/docente/{id}', 'show');
    Route::post('/docente', 'store');
    Route::put('/docente/{id}', 'edit');
    Route::delete('/docente/{id}', 'destroy');
 });

 Route::controller(CursoController::class)->group(function() {
    Route::get('/curso', 'index');
    Route::get('/curso/{id}', 'show');
    Route::post('/curso', 'store');
    Route::put('/curso/{id}', 'edit');
    Route::delete('/curso/{id}', 'destroy');
 });

 Route::controller(AlumnoCursoController::class)->group(function() {
   Route::get('/inscripcion', 'index');
   Route::get('/inscripcion/{id}', 'show');
   Route::post('/inscripcion', 'store');
   Route::put('/inscripcion/{id}', 'edit');
   Route::delete('/inscripcion/{id}', 'destroy');
});