<?php

use App\Kernel;

ini_set('max_execution_time', '1800');
ini_set('memory_limit', '4096M');

require_once dirname(__DIR__).'/vendor/autoload_runtime.php';

return static function (array $context) {
    return new Kernel($context['APP_ENV'], (bool) $context['APP_DEBUG']);
};
