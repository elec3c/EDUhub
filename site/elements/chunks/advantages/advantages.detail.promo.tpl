{if $_modx->resource.advantages_detail}
{set $rows = json_decode($_modx->resource.advantages_detail, true)}
{set $color = ['#FFEB9D','#A5EBFC','#EBC4FA','#FFCCA1','#CBE5C7']}
<section class="corpconven section__mgb--sm">
    <div class="container">
        <div class="corpconven__cols">
            <div class="corpconven__col">
                <div class="corpconven__item corpconven__item--empty">
                    <h2 class="section__title fs--md">{if $_modx->resource.advantages_detail_title}{$_modx->resource.advantages_detail_title}{else}Наши с нами удобнее{/if}</h2>
                </div>
                
                {foreach $rows as $idx => $row}                      
                    {if $idx < 2}
                    <div class="corpconven__item" style="{'background:'~$color[$idx]~';'}">
                        {if $row.title}
                            <h3 class="corpconven__item-title">{$row.title}</h3> 
                        {/if}
                        {if $row.description}
                            <div class="corpconven__item-text">{$row.description}</div>
                        {/if}
                    </div>
                    {/if}
                {/foreach}
                
            </div>
                    
            <div class="corpconven__col">
                {foreach $rows as $idx => $row}                      
                    {if $idx >= 2}
                    <div class="corpconven__item" style="{'background:'~$color[$idx]~';'}">
                        {if $row.title}
                            <h3 class="corpconven__item-title">{$row.title}</h3> 
                        {/if}
                        {if $row.description}
                            <div class="corpconven__item-text">{$row.description}</div>
                        {/if}
                    </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </div>
</section><!-- corpconven -->
{/if}  