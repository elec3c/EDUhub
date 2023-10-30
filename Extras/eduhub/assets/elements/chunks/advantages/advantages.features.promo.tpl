{if $_modx->resource.advantages}
{set $rows = json_decode($_modx->resource.advantages, true)}
<section class="features section__mgb--sm">
    <div class="container">
        <div class="section__head mb--sm">
            <h2 class="section__title fs--md">Все возможности EDUhub для компаний</h2>
        </div>
        <div class="features__items">
        {foreach $rows as $idx => $row}                              
            {if $row.description}
                <div class="features__item"><a href="{if intval($row.link)}{$row.link | url}{else}#{/if}" style="text-decoration:none;"><p>{$row.description}</p></a></div>
            {/if}        
        {/foreach}
        </div>
    </div>
</section><!--features-->  
{/if}