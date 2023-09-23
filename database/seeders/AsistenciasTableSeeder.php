<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Asistencia;

class AsistenciasTableSeeder extends Seeder
{
    public function run(): void
    {
        Asistencia::factory()->count(100)->create();
    }
}
