{if $_modx->resource.item_detail}
{set $rows = json_decode($_modx->resource.item_detail, true)}
<section class="corpgrades section__mgb--sm">
    <div class="container">
        <div class="corpgrades__inner section__lr">
            <div class="section__cols corpgrades__cols">
                {if $_modx->resource.item_detail_title}
                    <h2 class="section__title fs--md">{if $_modx->resource.item_detail_title}{$_modx->resource.item_detail_title}{else}Перечисление (подробнее){/if}</h2>
                {/if}
                <div class="corpgrades__cont">
                    <div class="content__text list-mg">
                        <ul>                    
                        {foreach $rows as $idx => $row}                      
                            <li><b>{if $row.title}{$row.title}{/if}</b>{if $row.description} {$row.description}{/if}</li>
                        {/foreach}
                        </ul>
                    </div>
                    <div class="corpgrades__buttons">
                        <button class="btn w-all" data-open-popup="reg">Зарегистрировать компанию</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--corpgrades-->  
{/if}