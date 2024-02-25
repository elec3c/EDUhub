<?php
$user_id = $modx->getOption('user_id', $scriptProperties, 0);
$arr     = $modx->getOption('arr', $scriptProperties, 0);

$sum = 0;

if($user_id > 0) {
    
    $c = $modx->newQuery('BudgetOperation');
    $c->select('sum, date');
    $c->where(['userId' => $user_id, 'sum:<'=>'0', 'date:>='=>strtotime($modx->runSnippet('getDateMonthAgo')), 'date:<='=>strtotime(date('Y-m-1 00:00:00'))]);
    $c->prepare();

    foreach ($modx->getIterator('BudgetOperation', $c) as $item) {
    
        $sum += $item->get('sum');
        
        if($arr) {
            
            $r[$item->get('date')] = $item->get('sum');
            
        }
    
    }
}


return ($arr == 1) ? ($r):($sum);