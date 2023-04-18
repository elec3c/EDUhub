{if $_modx->resource.item}
{set $rows = json_decode($_modx->resource.item, true)}
<section class="corpgrades section__mgb--sm">
    <div class="container">
        <div class="section__cols corpgrades__cols">
            <div class="section__head mb--sm">
                {if $_modx->resource.item_title}
                    <h2 class="section__title fs--md">{if $_modx->resource.item_title}{$_modx->resource.item_title}{else}Перечисление{/if}</h2>
                {/if}
            </div>
            <div class="section__wrap">
                <ul class="corpgrades__list">
                {foreach $rows as $idx => $row}                      
                    {if $row.description}
                    <li>{$row.description}</li>
                    {/if}
                {/foreach}
                </ul>
            </div>
        </div>
    </div>
</section><!--corpgrades-->
{/if}  