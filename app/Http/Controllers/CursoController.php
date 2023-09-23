<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;

class CursoController extends Controller
{
    public function index()
    {
        $cursos = new Curso();
        return $cursos->all();
    }

    public function show($id)
    {
        $cursos = new Curso();
        return $cursos->find($id);
    }

    public function store(Request $request)
    {
        $cursos = new Curso();
        $cursos->nombre = $request->nombre;
        $cursos->descripcion = $request->descripcion;
        $cursos->save();
        return $cursos;
    }

    public function edit($id, Request $request)
    {
        $cursos = Curso::find($id);
        $cursos->nombre = $request->nombre;
        $cursos->descripcion = $request->descripcion;
        $cursos->save();
        return $cursos;
    }

    public function destroy($id)
    {
        $cursos = Curso::find($id);
        $cursos->delete();
        return $cursos->all();
    }
}
