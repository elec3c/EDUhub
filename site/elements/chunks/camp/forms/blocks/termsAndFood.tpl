{set $data = $data['hero']['data']}
{*    <pre>*}
{*        {$data|print_r}*}
{*    </pre>*}
<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Условия, питание</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body">
        <div class="cmp_create__addfood">
            <div class="cmp_create__addfood-col">
                <label class="form__lcheck">
                    <input type="checkbox" class="styler styler--camp" name="{$prefixForm}conditioner" {if $data["conditioner"] == '1'}checked{/if}>
                    <span>кондиционер</span>
                </label>
                <label class="form__lcheck">
                    <input type="checkbox" class="styler styler--camp" name="{$prefixForm}freeParking" {if $data["freeParking"] == '1'}checked{/if}>
                    <span>0 руб. PARKING</span>
                </label>
                <label class="form__lcheck">
                    <input type="checkbox" class="styler styler--camp" name="{$prefixForm}freeWiFi" {if $data["freeWiFi"] == '1'}checked{/if}>
                    <span>free Wi - Fi</span>
                </label>
            </div>
            <div class="cmp_create__addfood-col">
                <div class="cmp_create__irow-label">Питание</div>
                {insert 'file:chunks/camp/data/meals.tpl'}{*Массив значений - Питание - return $mealsArray*}
                {foreach $mealsArray as $key => $item}
                    <label class="form__lcheck">
                        <input type="radio" class="styler styler--camp" name="{$prefixForm}meals" value="{$key}" {if $data['meals'] == $key} checked{/if}>
                        <span>{$item}</span>
                    </label>
                {/foreach}
                <span class="invalid-feedback" data-error="{$prefixForm}meals"></span>
            </div>
        </div>
    </div>
</div>