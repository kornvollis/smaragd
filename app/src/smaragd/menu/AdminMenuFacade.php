<?php
namespace smaragd\menu;
use Illuminate\Support\Facades\Facade;

class AdminMenuFacade extends Facade {

      protected static function getFacadeAccessor()
      {
           return 'adminmenu';
      }
}