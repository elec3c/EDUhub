{if $_modx->resource.advantages}
{set $rows = json_decode($_modx->resource.advantages, true)}

<div class="persdisc__reg persdisc__block section__lr">
    <div class="persdisc__block-inner">
    <div class="persdisc__block-title section__title">{if $_modx->resource.advantages_title}{$_modx->resource.advantages_title}{else}Что дает регистрация на сайте:{/if}</div>
        <div class="persdisc__reg-cols">
            <div class="persdisc__reg-text persdisc__block-text">
                <ul>
                    {foreach $rows as $idx => $row}                      
                            {if $row.title==1}
                            {if $row.description}
                                    <li>{$row.description}</li>
                                {/if}
                            {/if}
                    {/foreach}                                    
                </ul>
                <ul>
                    {foreach $rows as $idx => $row}                      
                            {if $row.title==2}
                                {if $row.description}
                                    <li>{$row.description}</li>
                                {/if}
                            {/if}
                    {/foreach}   
                </ul>
            </div>
            <div class="persdisc__reg-buttons">
                <button class="btn btn--purple w-all" data-open-popup="reg">Зарегистрироваться</button>
            </div>
        </div>
    </div>
</div>
                
<div class="persdisc__sale persdisc__block section__lr">
    <div class="persdisc__sale-inner persdisc__block-inner">
        <div class="persdisc__block-title section__title">Какие скидки вы можете получить <span class="nowrap">на сайте EDUHUB:</span></div>
        <div class="persdisc__block-text">
            <ul>
                {foreach $rows as $idx => $row}                      
                        {if $row.title==3}
                        {if $row.description}
                            <li>{$row.description}</li>
                        {/if}
                    {/if}
                {/foreach}   
            </ul>
        </div>
        <div class="persdisc__sale-percent"><img src="assets/images/persdisc-percent.svg" alt=""></div>
    </div>
</div>                
{/if}