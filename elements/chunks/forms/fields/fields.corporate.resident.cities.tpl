
{set $resident_cities = $_modx->runSnippet('!getListCities', ['name'=>'city','arr'=>1])}
{set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'resident_cities','top' => '0']}
{set $curr_resident_cities = $.php.explode('||',$r)}
        <div class="checkselect check-select" data-placeholder="Выбрать все">
        <input type="hidden" name="course_metro" class="check-select-value">
        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Сделайте выбор города</div>
        <div class="checkselect__dropdown check-select-dropdown">
            <div class="checkselect__list">
                <label><input type="checkbox"  class="styler check-param" name="resident_cities[]" {if ((count($resident_cities) + 1)==$.php.count($curr_resident_cities) || (count($curr_resident_cities) >= 113))}checked{/if} value="all"><span>Выбрать все</span></label>                
                {foreach $resident_cities as $k=>$v}
                {if $.php.in_array($k,$curr_resident_cities)}
                    <label><input type="checkbox"  class="styler check-param" name="resident_cities[]" checked value="{$k}"><span>{$v}</span></label>
                {else}
                    <label><input type="checkbox"  class="styler check-param" name="resident_cities[]" value="{$k}"><span>{$v}</span></label>
                {/if}
                {/foreach}                                        
            </div>
        </div>