{set $styler = 'styler styler--white'}
<select name="commission" id="commission" data-placeholder="Комиссия" class="{$styler}">
    <option value=""></option>
    [[!getValuesTV? &tvid = `56` &curr = `[[+fi.commission]]`]]
</select>

