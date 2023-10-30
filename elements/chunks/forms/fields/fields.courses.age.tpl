{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<select name="age" data-placeholder="Возраст" class="{$styler}" {if $req==1}required{/if}>
<option class="option-hide" value=""></option>
    <option value="3-7">3-7</option>
    <option value="7-11">7-11</option>
    <option value="11-17">11-17</option>
    <option value="18+">18+</option>
</select>