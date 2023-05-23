{set $conclusion_agreement = $_modx->runSnippet('!getValuesTV', ['tvid' => 115, 'arr'=>1])}
{set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'conclusion_agreement','top' => '0']}
{set $curr_conclusion_agreement = $.php.explode('||',$r)}

{if (count($conclusion_agreement)==count($curr_conclusion_agreement))}
    {set $all = 1}
{else}
    {set $all = 0}
{/if}

<div class="ppsettings__category-select">
    <div class="checkselect  check-select" data-placeholder="Выбрать способы">
        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Выбрать способы</div>
        <div class="checkselect__dropdown check-select-dropdown">
            <div class="checkselect__list">
                    {if count($curr_conclusion_agreement) > 0 && !empty($curr_conclusion_agreement[0])}
                    <label><input type="radio"  class="styler check-param" name="conclusion_agreement" {if $all == 1}checked{/if} value="1"><span>все варианты</span></label>
                    {else}
                    <label><input type="radio"  class="styler check-param" name="conclusion_agreement"  value="1"><span>все варианты</span></label>
                    {/if}
                    {foreach $conclusion_agreement as $k=>$v}
                        {if $.php.in_array($k,$curr_conclusion_agreement) && ($all == 0)}
                            <label><input type="radio"  class="styler check-param" name="conclusion_agreement" checked value="{$k}"><span>{$v}</span></label>
                        {else}
                            <label><input type="radio"  class="styler check-param" name="conclusion_agreement" value="{$k}"><span>{$v}</span></label>
                        {/if}
                    {/foreach}                                        
                </div>
        </div>
    </div> 
</div>