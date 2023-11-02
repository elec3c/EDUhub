{set $direction = $_modx->runSnippet('!getValuesTV', ['tvid' => 90, 'arr'=>1])}
{set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'schools_direction_'~$type,'top' => '0']}
{set $curr_direction = $.php.explode('||',$r)}
<div class="clearfix" style="position: relative;">
    {foreach $direction as $k=>$v}
        <label class="form__lcheck form__lcheck--btn">
            {if $.php.in_array($k,$curr_direction)}
                <input type="checkbox" class="styler styler--transparent" name="schools_direction_{$type}[]" value="{$k}" checked><span>{$k | resource : 'pagetitle'}</span>
            {else}
                <input type="checkbox" class="styler styler--transparent" name="schools_direction_{$type}[]" value="{$k}"><span>{$k | resource : 'pagetitle'}</span>
            {/if}
        </label>
    {/foreach}
</div>
