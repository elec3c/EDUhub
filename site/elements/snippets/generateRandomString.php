<?php

$length= $modx->getOption('length', $scriptProperties, 8);

$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
$random_string = '';
for ($i = 0; $i < $length; $i++) {
    $random_string .= $chars[rand(0, strlen($chars) - 1)];
}

return $random_string;