{set $discount = $query['discount']}
{set $a_discount_unit = '!getValuesTV' | snippet : ['tvid'=>'118', 'arr'=>1]}
{set $discount_unit = $a_discount_unit[$query['discount_unit']]}
{set $a_discount_for_what = '!getValuesTV' | snippet : ['tvid'=>'119', 'arr'=>1]}
{set $discount_for_what = $a_discount_for_what[$query['discount_for_what']]}

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
                            <option value="{$id}">{$_pls[\'tv.course_group_title\']?:$pagetitle}&nbsp;{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</option>                                        
                        {/if}
                                
                ',
        'tplWrapper'=>'@INLINE <select name="template" class="styler styler--white">{$output}</select>',
                                'where'=>["course_owner"=>$from_user_id]
                                
                            ]?:'-'}

{/if}


<div class="loyalty__citem lk__wraplr section__lr loyalty__ccols">
                    <div class="loyalty__citem-col loyalty__citem-col--info">
                        <div class="loyalty__citem-label">Школа</div>
                        <div class="loyalty__citem-val">{$from_user_id | user : 'fullname'}</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--category">
                        <div class="loyalty__citem-label">Категории</div>
                        {if $type == 'diff'}
                        {set $a = '!getPartnershipSalesGroup' | snippet : [ 'partnership_id' => $id]}                        
                        <div class="loyalty__citem-val">
                        {foreach $a as $cat_id=>$category}
                            {set $categoty_name = '!pdoField' | snippet : [ 'field'=>'pagetitle', 'id'=>$cat_id]} 
                            <b>{$categoty_name}</b> <br>
                            {foreach $category as $sub_id=>$sub_cat}
                                {set $sub_name = '!pdoField' | snippet : [ 'field'=>'pagetitle', 'id'=>$sub_id]}                        
                                {set $count = count($sub_cat)}
                                <i>{$sub_name} - {$count}</i><br>
                            {/foreach}
                        {/foreach}
                        </div>
                        {else}
                        <div class="loyalty__citem-val">
                            <b>Скидка предоставляется на все категории курсов</b>
                        </div>
                        {/if}
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--sale">
                        <div class="loyalty__citem-label">Размер скидки <br> и на что</div>
                        {if $type != 'diff'}
                        <div class="loyalty__citem-val">{$discount}{$discount_unit}<br> {$discount_for_what}</div>
                        {else}
                            {$sales_list}
                        {/if}
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--note">
                        <div class="loyalty__citem-label">Примечание</div>
                        <div class="loyalty__citem-val">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--count">
                        <div class="loyalty__citem-label">Идет набор на курсы</div>
                        <div class="loyalty__citem-val">4 программы</div>
                        <div class="loyalty__citem-val"><a href="" class="link">Подборка курсов</a></div>
                    </div>
                </div>