<?php
$user_id = $modx->getOption('user_id', $scriptProperties, 0);


$BudgetBonus = $modx->getObject('BudgetBonus', ['userId' => $user_id]);    

if($BudgetBonus != null) {

    $sum = $BudgetBonus->get('sum');
    
} else {
    
    $sum = 0;
}

return $sum;