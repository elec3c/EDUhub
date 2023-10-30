<?php
$user_id = $modx->getOption('user_id', $scriptProperties, 0);


$Budget = $modx->getObject('Budget', ['userId' => $user_id]);    

if($Budget != null) {

    $sum = $Budget->get('sum');
    
} else {
    
    $sum = 0;
}

return $sum;