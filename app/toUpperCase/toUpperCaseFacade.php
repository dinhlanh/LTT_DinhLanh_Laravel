<?php
namespace App\toUpperCase;
use Illuminate\Support\Facades\Facade;

class toUpperCaseFacade extends Facade
{
	protected static function getFacadeAccessor()
	{
		return 'toUpperCase';
	}
}
?>