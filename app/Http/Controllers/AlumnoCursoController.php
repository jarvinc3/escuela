<?php

namespace App\Http\Controllers;

use App\Models\AlumnoCurso;
use App\Models\Curso;
use Illuminate\Http\Request;

class AlumnoCursoController extends Controller
{
    public function index()
    {
        $inscripcion = new AlumnoCurso();
        return $inscripcion->all();
    }

    public function create()
    {
        return view('cursos.create');
    }

    public function store(Request $request)
    {
        $inscripcion = new AlumnoCurso();
        $inscripcion->alumno_id = $request->alumno_id;
        $inscripcion->curso_id = $request->curso_id;
        $inscripcion->save();
        return $inscripcion;
    }

    public function show($id)
    {
        $inscripcion = new AlumnoCurso();
        return $inscripcion->find($id);
    }

    public function edit($id, Request $request)
    {
        $inscripcion = AlumnoCurso::find($id);
        $inscripcion->alumno_id = $request->alumno_id;
        $inscripcion->curso_id = $request->curso_id;
        $inscripcion->save();
        return $inscripcion;
    }


    public function destroy($id)
    {
        $clases = Curso::find($id);
        $inscripcion = AlumnoCurso::find($id);
        $inscripcion->delete();
        return $clases->all();
    }
}
