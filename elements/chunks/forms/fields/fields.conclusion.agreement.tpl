{set $conclusion_agreement = $_modx->runSnippet('!getValuesTV', ['tvid' => 115, 'arr'=>1])}
{set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'conclusion_agreement','top' => '0']}
{set $curr_conclusion_agreement = $.php.explode('||',$r)}


<div class="ppsettings__category-select">
    <div class="checkselect  check-select" data-placeholder="Все варианты заключения договора">
        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все варианты заключения договора</div>
        <div class="checkselect__dropdown check-select-dropdown">
            <div class="checkselect__list">
                    <label><input type="radio"  class="styler check-param" name="conclusion_agreement" {if (count($conclusion_agreement)==count($curr_conclusion_agreement))}checked{/if} value="1"><span>все варианты</span></label>
                    {foreach $conclusion_agreement as $k=>$v}
                        {if $.php.in_array($k,$curr_conclusion_agreement) && (count($conclusion_agreement)!=count($curr_conclusion_agreement))}
                            <label><input type="radio"  class="styler check-param" name="conclusion_agreement" checked value="{$k}"><span>{$v}</span></label>
                        {else}
                            <label><input type="radio"  class="styler check-param" name="conclusion_agreement" value="{$k}"><span>{$v}</span></label>
                        {/if}
                    {/foreach}                                        
                </div>
        </div>
    </div> 
</div>