<section class="corpgrades section__mgb--sm">
    <div class="container">
        <div class="section__cols corpgrades__cols corpgrades__cols--2">
        {if $_modx->resource.item}
        {set $rows = json_decode($_modx->resource.item, true)}                    
        <div class="content__text">
            <h3>{if $_modx->resource.item_title}{$_modx->resource.item_title}{else}Перечисление{/if}</h3>
            <ul>
                {foreach $rows as $idx => $row}
                    {if $row.description}<li>{$row.description}</li>{/if}
                {/foreach}
            </ul>
        </div>
        {/if}                    

        {if $_modx->resource.item_detail}
        {set $rows = json_decode($_modx->resource.item_detail, true)}
        <div class="section__wrap content__text">
            <h3>{if $_modx->resource.item_detail_title}{$_modx->resource.item_detail_title}{else}Перечисление (подробнее){/if}</h3>
            {foreach $rows as $idx => $row}
            <p>{if $row.title}<b>{$row.title}</b>{/if}{if $row.description} {$row.description}{/if}</p>
            {/foreach}
        </div>
        {/if}                    
        </div>
    </div>
</section><!--corpgrades--> 