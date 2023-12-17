{if $_modx->resource.advantages_detail}
{set $rows = json_decode($_modx->resource.advantages_detail, true)}
{set $color = ['#FFEB9D','#A5EBFC','#EBC4FA','#FFCCA1','#CBE5C7']}
<section class="f4ways section__mgb--sm">
    <div class="container">
        <div class="f4ways__head section__head text--center mb--sm">
            <h2 class="section__title fs--md">{if $_modx->resource.advantages_detail_title}{$_modx->resource.advantages_detail_title}{else}Детали{/if}</h2>
        </div>
        <div class="f4ways__items">
            {foreach $rows as $idx => $row}  
  
            <div class="f4ways__item">
                {if $row.title}
                    <p><b>{$row.title}</b></p>
                {/if}          
                {if $row.description}{$row.description}{/if}
            </div>
            {/foreach}
        </div>
    </div>
</section><!--f4ways--> 
{/if}  