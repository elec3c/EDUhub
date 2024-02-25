<div class="cmp_hero__card">
    {$_modx->resource.camp_date_from | date : "d.m.y"} - {$_modx->resource.camp_date_to | date : "d.m.y"}
    {if $_modx->resource.camp_format === 'urban'}
    <br>
    {$weekDaysFrom} - {$weekDaysTo} <br class="hide-mobile-lg">
    {$classTimeFrom} - {$classTimeTo}
    {/if}
</div>