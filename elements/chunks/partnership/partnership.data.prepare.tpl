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
        'type'=>$type,
        
        'a_discount_for_what'=>$a_discount_for_what,
        'a_discount_unit'=>$a_discount_unit,
        'curr_page_id'=>$_modx->resource.id,
        
        'tpl'=>'@FILE chunks/partnership/partnership.discount.prepare.list.tpl',
        'tplWrapper'=>'@INLINE {$output}',
        'where'=>["course_owner"=>$from_user_id]
                                    
        ]?:'-'}
{else}
    
        {set $sales_all = '!pdoResources' | snippet : [
            'parents'=>'61',
            'depth'=>0,
            'limit'=>0,
            'includeTVs'=>'course_group_title, course_owner',
            'sales'=>$sales,
            'type'=>$type,
            
            'discount'=>$discount,
            'discount_unit'=>$discount_unit,
            'discount_for_what'=>$discount_for_what,
            
            'curr_page_id'=>$_modx->resource.id,
            
            'tpl'=>'@FILE chunks/partnership/partnership.discount.prepare.all.tpl',
            'tplWrapper'=>'@INLINE {$output}',
            'where'=>["course_owner"=>$from_user_id]
                                        
            ]?:'-'}    
            
    
{/if}



{set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
{set $scope = $r[$to_user_id|user:'scope']}

{set $count_employees = $to_user_id|user:'count_employees'}