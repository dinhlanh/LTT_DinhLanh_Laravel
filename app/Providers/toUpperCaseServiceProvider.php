<?php

namespace App\Providers;

use App\toUpperCase\toUpperCase;

use Illuminate\Support\ServiceProvider;

class toUpperCaseServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
        $this->app->bind('toUpperCase', function(){
            return new toUpperCase();
        });
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
