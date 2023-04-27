{if $_modx->resource.advantages}
{set $rows = json_decode($_modx->resource.advantages, true)}
<section class="pconven section__mgb--sm">
    <div class="container">
        <div class="pconven__head section__head mb--sm">
            <h2 class="section__title fs--md">{if $_modx->resource.advantages_title}{$_modx->resource.advantages_title}{else}Наши с нами удобнее{/if}</h2>
        </div>
        <div class="pconven__items">
        {foreach $rows as $idx => $row}                      
            <div class="pconven__item {if ((count($rows) % 3 != 0) && (count($rows) == $idx + 1))} pconven__item--c2{/if}">
                {if $row.title}
                    <h3 class="pconven__item-title">{$row.title}</h3> 
                {/if}
                {if $row.description}
                    <div class="pconven__item-text">{$row.description}</div>
                {/if}
            </div>
        {/foreach}
        </div>
    </div>
</section><!-- pconven --> 
{/if}