{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}    
        

{if $.get.edit > 0}
{set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$.get.edit, 'arr'=>1])}
{/if}


<div class="cadd__block">
    <label class="form__lcheck"><input type="checkbox" class="styler add-schedule" name="add_schedule" {if $.php.is_array($days) && $.php.count($days) > 0}checked{/if}><span>Добавить расписание</span></label>
    <div class="cadd__schedule schedule">
        {set $days_arr = $_modx->runSnippet('getValuesTV', ['tvid' => 69, 'arr' => 1])}        
        {foreach $days_arr as $k=>$v}
            <div class="schedule__row schedule-row">
                <label class="form__lcheck">
                    <input type="checkbox" class="styler add-schedule-time" name="days[]" value="{$k}" {if $days[$k] == $v}checked{/if}><span>{$v}</span>
                </label>
                <div class="schedule-inputs" style="display: none;">
                    <div class="schedule__inputs">
                        {set $prefix = $_modx->runSnippet('RU2LAT', ['str' => $k])}
                        {if $.get.edit > 0}
                            {set $days_period = $_modx->runSnippet('pdoField', ['field' => 'days_period_'~$prefix, 'id'=>$.get.edit])}
                            {set $a = $.php.explode('||',$days_period)}
                            {set $days_period_from = ($.php.strlen($a[0])==4)?('0'~$a[0]):($a[0])}
                            {set $days_period_to = ($.php.strlen($a[1])==4)?('0'~$a[1]):($a[1])}
                            <input type="text" name="{'days_period_'~$prefix~'[]'}" placeholder="Время от" class="input input--time time-mask" value="{$days_period_from}">
                            <input type="text" name="{'days_period_'~$prefix~'[]'}" placeholder="Время до" class="input input--time time-mask" value="{$days_period_to}">
                        {else}
                            <input type="text" name="{'days_period_'~$prefix~'[]'}" placeholder="Время от" class="input input--time time-mask">
                            <input type="text" name="{'days_period_'~$prefix~'[]'}" placeholder="Время до" class="input input--time time-mask">
                        {/if}
                    </div>
                </div>    
            </div>
        {/foreach}
    </div>
</div>