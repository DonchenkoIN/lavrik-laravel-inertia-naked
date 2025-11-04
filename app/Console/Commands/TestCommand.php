<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

class TestCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'go';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Команда для тестирования скриптов';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $user = User::findOrFail(2);
        dd(count($user->posts));
    }
}
