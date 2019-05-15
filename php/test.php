<?php

require __DIR__ . '/vendor/autoload.php';

// load Monolog library
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
use Monolog\Formatter\JsonFormatter;

// create a log channel
$log = new Logger('channel_name');

// create a Json formatter
$formatter = new JsonFormatter();

// create a handler
$stream = new StreamHandler('php://stdout', Logger::DEBUG);
$stream->setFormatter($formatter);

// bind
$log->pushHandler($stream);

// an example
$log->info('Adding a new user', array('username' => 'Seldaek'));
