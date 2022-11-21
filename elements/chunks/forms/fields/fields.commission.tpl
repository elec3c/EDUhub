{set $styler = 'styler styler--white'}
<select name="commission" id="commission" data-placeholder="Комиссия" class="styler" {if $req==1}required{/if}>
<option value=""></option>
{if $format_of_study == "group"}
    [[!getValuesTV? &tvid = `56` &curr = `[[+fi.commission]]`]]
{elseif $format_of_study == "individual"}
    [[!getValuesTV? &tvid = `67` &curr = `[[+fi.commission]]`]]
{/if}
</select>

