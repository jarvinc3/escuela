<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Asistencia;

class AsistenciaFactory extends Factory
{
    protected $model = Asistencia::class;

    public function definition():array
    {
        return [
            'alumno_id' => $this->faker->numberBetween(1, 10),
            'curso_id' => $this->faker->numberBetween(1, 5), 
            'fecha' => $this->faker->date(),
            'estado' => $this->faker->randomElement(['A', 'T', 'F']),
        ];
    }
}
