<?php

namespace Database\Factories;;

use Illuminate\Database\Eloquent\Factories\Factory;

class AlumnoFactory extends Factory
{
    protected $model = \App\Models\Alumno::class;

    public function definition(): array
    {
        return [
            'nombre' => $this->faker->firstName(),
            'apellido' => $this->faker->lastName(),
            'correo_electronico' => $this->faker->unique()->safeEmail(),
            'asistencia' => $this->faker->randomElement(['A', 'T' ,'F']),
        ];
    }
}

