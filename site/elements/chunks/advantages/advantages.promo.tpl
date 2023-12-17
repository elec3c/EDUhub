{if $_modx->resource.advantages}
{set $rows = json_decode($_modx->resource.advantages, true)}
<section class="corpwhy section__mgb--sm">
    <div class="container">
        <div class="section__head mb--sm">
            <h2 class="section__title fs--md">{if $_modx->resource.advantages_title}{$_modx->resource.advantages_title}{else}Наши преимущества{/if}</h2>
        </div>
        <div class="corpwhy__items">
        {foreach $rows as $idx => $row}                      
            <div class="corpwhy__item">
                {if $row.title}
                    <div class="corpwhy__item-title">{$row.title}</div> 
                {/if}
                {if $row.description}
                    {$row.description}
                {/if}
            </div>
        {/foreach}
        </div>
    </div>
</section><!-- corpwhy -->
{/if}  