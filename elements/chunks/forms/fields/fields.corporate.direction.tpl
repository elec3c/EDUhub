{set $direction = $_modx->runSnippet('!getValuesTV', ['tvid' => 90, 'arr'=>1])}
{set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'schools_direction','top' => '0']}
{set $curr_direction = $.php.explode('||',$r)}
<div class="ppsettings__category-select">
    <div class="checkselect  check-select" data-placeholder="Все направления">
        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все направления</div>
        <div class="checkselect__dropdown check-select-dropdown">
            <div class="checkselect__list">
                    <label><input type="checkbox"  class="styler check-param" name="schools_direction[]" {if ((count($direction) + 1)==$.php.count($curr_direction) || (count($curr_direction) >= 8))}checked{/if} value="all"><span>Все направления</span></label>
                    {foreach $direction as $k=>$v}
                        {if $.php.in_array($k,$curr_direction)}
                            <label><input type="checkbox"  class="styler check-param" name="schools_direction[]" checked value="{$k}"><span>{$k | resource : 'pagetitle'}</span></label>
                        {else}
                            <label><input type="checkbox"  class="styler check-param" name="schools_direction[]" value="{$k}"><span>{$k | resource : 'pagetitle'}</span></label>
                        {/if}
                    {/foreach}                                        
                </div>
        </div>
    </div> 
</div>