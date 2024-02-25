{if $_modx->resource.camp_region}
    <div class="cmp_hero__card">
        <div>
        <span>{$_modx->resource.camp_region}</span>
        {if $_modx->resource.camp_distance}
            <span>{$_modx->resource.camp_distance} км. от областного центра</span>
        {/if}
        </div>
    </div>
{/if}