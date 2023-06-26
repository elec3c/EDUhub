{if $_modx->resource.advantages_detail}
{set $rows = json_decode($_modx->resource.advantages_detail, true)}
        <section class="multisc section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мы подготовили несколько вариантов поиска курсов <br class="hide-tablet"> в зависимости от ваших целей и наличия свободного времени</h2>
                </div>

                <div class="multisc__items">
                    {foreach $rows as $idx => $row}
                    <div class="multisc__item">
                        <div class="multisc__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.image}"></div>
                        <div class="multisc__item-info">
                            {if $row.title}    
                            <p><b>{$row.title}</b></p>
                            {/if}
                            {if $row.description}    
                                {$row.description}
                            {/if}
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
        </section><!--multisc  --> 
{/if}