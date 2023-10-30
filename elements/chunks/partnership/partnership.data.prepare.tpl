{set $discount = $query['discount']}

{set $a_agreement = '!getValuesTV' | snippet : ['tvid'=>'115', 'arr'=>1]}
{set $agreement = $a_agreement[$query['agreement']]}
{set $agreement_key = $query['agreement']}

{set $a_discount_unit = '!getValuesTV' | snippet : ['tvid'=>'118', 'arr'=>1]}
{set $discount_unit = $a_discount_unit[$query['discount_unit']]}

{set $a_discount_for_what = '!getValuesTV' | snippet : ['tvid'=>'119', 'arr'=>1]}
{set $discount_for_what = $a_discount_for_what[$query['discount_for_what']]}
{set $schools_id = '!getSchoolsPageID' | snippet : ['schools_id'=>$from_user_id]}



{if $type == 'diff'}


{if is_array($query['sales'])}
    {set $sales = $query['sales']}
{else}
    {set $sales = []} 
{/if}

                                

{set $sales_list = '!pdoResources' | snippet : [
    'parents'=>'61',
    'depth'=>0,
    'limit'=>0,
    'includeTVs'=>'course_group_title, course_owner',
    'sales'=>$sales,
    'a_discount_for_what'=>$a_discount_for_what,
    'a_discount_unit'=>$a_discount_unit,
        
    'tpl'=>'@CODE 
        
                {set $discount = $sales[$id][\'discount\']}
                {set $discount_unit = $a_discount_unit[$sales[$id][\'discount_unit\']]}
                {set $discount_for_what = $a_discount_for_what[$sales[$id][\'discount_for_what\']]}
                        
                {if intval($discount) && !empty($discount_unit) && !empty($discount_for_what)}
                    {set $title = $_pls[\'tv.course_group_title\']?:$pagetitle}
                    {set $title = ucfirst(trim(str_replace(\'Шаблон\',\'\',$title)))}
                    <div class="ssrequest__item-rowc2"><div>{$title|truncate:60:" ..."}</div><div>{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</div></div>                                        
                {/if}
                                
                ',
        'tplWrapper'=>'@INLINE {$output}',
        'where'=>["course_owner"=>$from_user_id]
                                
    ]?:'-'}

{/if}



{set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
{set $scope = $r[$to_user_id|user:'scope']}

{set $count_employees = $to_user_id|user:'count_employees'}