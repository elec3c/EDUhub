{if $_modx->resource.item_learn}
{set $rows = json_decode($_modx->resource.item_learn, true)}
<section class="learn section__mgb--sm">
    <div class="container">
        {foreach $rows as $idx => $row}                      
        <div class="learn__item section__lr">
            {if $row.description}
                <div class="learn__item-text">{$row.description}</div>
            {/if}
            {if $row.link}
                <div class="learn__item-buttons">
                    <a href="[[~{$row.link}]]" class="btn btn--purple w-all">УЗНАТЬ ПОДРОБНЕЕ</a>
                </div>
            {/if}
        </div>
        {/foreach}        
    </div>
</section><!--learn-->  
{/if}