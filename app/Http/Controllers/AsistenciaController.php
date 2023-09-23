<?php

namespace App\Http\Controllers;

use App\Models\Asistencia;
use Illuminate\Http\Request;

class AsistenciaController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'alumno_id' => 'required|exists:alumnos,id',
            'curso_id' => 'required|exists:cursos,id',
            'fecha' => 'required|date',
            'estado' => 'required|in:A,T,F', // A = Asistió temprano, T = Asistió tarde, F = Faltó
        ]);

        Asistencia::create([
            'alumno_id' => $request->alumno_id,
            'curso_id' => $request->curso_id,
            'fecha' => $request->fecha,
            'estado' => $request->estado,
        ]);
        return response()->json(['message' => 'Asistencia registrada con éxito'], 201);
    }

    public function show($alumno_id, $curso_id)
    {
        $asistencia = Asistencia::where('alumno_id', $alumno_id)
            ->where('curso_id', $curso_id)
            ->get();

        if ($asistencia->isEmpty()) {
            return response()->json(['message' => 'No se encontraron registros de asistencia para este alumno en este curso'], 404);
        }

        return response()->json(['data' => $asistencia], 200);
    }
}
