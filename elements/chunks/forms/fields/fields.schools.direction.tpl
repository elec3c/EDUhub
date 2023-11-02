{set $direction = $_modx->runSnippet('!getValuesTV', ['tvid' => 90, 'arr'=>1])}

{set $curr_direction = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'schools_direction_'~$type,'top' => '0']}
{set $curr_direction = $.php.explode('||',$curr_direction)}

{set $curr_sub_direction = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'schools_sub_direction_'~$type,'top' => '0']}
{set $curr_sub_direction = $.php.explode('||',$curr_sub_direction)}



<div class="accordion__container">
{foreach $direction as $k=>$v}
<div class="accordion__item">    
    <div class="accordion__header"><label class="form__lcheck form__lcheck--btn">
        {if $.php.in_array($k,$curr_direction)}
            <input type="checkbox" class="styler styler--transparent" name="schools_direction_{$type}[]" value="{$k}" checked/><span>{$k | resource : 'pagetitle'}</span>
        {else}
            <input type="checkbox" class="styler styler--transparent" name="schools_direction_{$type}[]" value="{$k}"/><span>{$k | resource : 'pagetitle'}</span>
        {/if}
    </label><div class="accordion__icon"></div></div>

    
    {set $sub_direction = $_modx->runSnippet('!pdoResources', ['parents' => $k, 'returnIds'=>1,'limit'=>0,'depth'=>0,'sortby'=>'{"id":"ASC"}'])}
    {set $sub_direction = explode(',',$sub_direction)}

    
    {if is_array($sub_direction) && (count($sub_direction) > 0)}

    <div class="accordion__content">
        {foreach $sub_direction as $k=>$v}
        <label class="form__lcheck form__lcheck--btn">
            {if $.php.in_array($v,$curr_sub_direction)}
                <input type="checkbox" class="styler styler--transparent" name="schools_sub_direction_{$type}[]" value="{$v}" checked/><span>{$v | resource : 'pagetitle'}</span>
            {else}
                <input type="checkbox" class="styler styler--transparent" name="schools_sub_direction_{$type}[]" value="{$v}"/><span>{$v | resource : 'pagetitle'}</span>
            {/if}
        </label>
        {/foreach}
    </div>
    {/if}
</div>    
{/foreach}
</div>

