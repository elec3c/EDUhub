<section class="compispartn section__mgb--sm">
    <div class="container">
        <div class="section__head mb--sm">
            <h2 class="section__title">{if $_modx->resource.item_text}{$_modx->resource.item_text}{else}Если ваша компания является партнером EDUHUB{/if}</h2>
        </div>
                <div class="compispartn__items">
                    {if $_modx->resource.item}
                    {set $rows = json_decode($_modx->resource.item, true)}
                    <div class="compispartn__item">
                        <p><b>{if $_modx->resource.item_title}{$_modx->resource.item_title}{else}Еще не зарегистрировались на сайте?</b>{/if}</b></p>
                        {foreach $rows as $idx => $row}
                        <p>{$idx + 1}.{if $row.description} {$row.description}{/if}</</p>
                        {/foreach}
                    </div>
                    {/if}
                    {if $_modx->resource.item_detail}
                    {set $rows = json_decode($_modx->resource.item_detail, true)}
                    <div class="compispartn__item">
                        <p><b>{if $_modx->resource.item_detail_title}{$_modx->resource.item_detail_title}{else}Уже зарегистрировались на сайте?{/if}</b></p>
                        {foreach $rows as $idx => $row}
                        <p>{$idx + 1}.{if $row.description} {$row.description}{/if}</p>
                        {/foreach}
                    </div>
                    {/if}
                </div>
            </div>
        </section><!--compispartn  -->  