{set $styler = 'styler styler--white'}
<select name="lead" id="lead" data-placeholder="Лиды" class="{$styler}" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV? &tvid = `58` &curr = `[[+fi.lead]]`]]
</select>

