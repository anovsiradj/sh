<?php

$pwd = 'pass';
$pwd_options['cost'] = rand(4,12);

$result = password_hash($pwd, PASSWORD_BCRYPT, $pwd_options);

echo PHP_EOL, $result, PHP_EOL, PHP_EOL;
