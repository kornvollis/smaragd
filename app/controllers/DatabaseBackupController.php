<?php

class DatabaseBackupController extends Controller {

    public function show() {
        return View::make('admin.database_manager.database_manager');
    }
}

?>