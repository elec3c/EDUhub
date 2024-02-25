<section class="corphow section__mgb--sm">
    <div class="container">
        <div class="corphow__wrap section__lr">
            <div class="XMLID ordform__XMLID-left"></div>
            <div class="XMLID ordform__XMLID-right"></div>
            <div class="section__head mb--sm text--center">
                {if $_modx->resource.alg_title}
                    <h2 class="section__title fs--md">{$_modx->resource.alg_title}</h2>
                {/if}
            </div>
            <div class="corphow__cols">
                <div class="corphow__col">
                    {set $count = count($rows)}
                    {if $_modx->resource.alg}
                        {set $rows = json_decode($_modx->resource.alg, true)}
                        {set $end_col = (ceil(count($rows)/2))}
                        {foreach $rows as $idx => $row}
                            {if $idx + 1 <= $end_col}
                            <div class="corphow__item">
                                <div class="corphow__item-number">{$idx + 1}</div>
                                <div class="corphow__item-info">
                                    {if $row.title}<h3 class="corphow__item-title">{$row.title}</h3>{/if}
                                    {if $row.text}<div class="corphow__item-desc">{$row.text}</div>{/if}
                                </div>
                            </div>
                            {/if}
                        {/foreach}
                    {/if}                            
                </div>
                <div class="corphow__col">
                    {if $_modx->resource.alg}
                        {set $rows = json_decode($_modx->resource.alg, true)}
                        {foreach $rows as $idx => $row}
                            {if $idx + 1 > $end_col}
                            <div class="corphow__item{if $count = $idx + 1} f-all{/if}">
                                <div class="corphow__item-number">{$idx + 1}</div>
                                <div class="corphow__item-info">
                                    {if $row.title}<h3 class="corphow__item-title">{$row.title}</h3>{/if}
                                    {if $row.text}<div class="corphow__item-desc">{$row.text}</div>{/if}
                                </div>
                            </div>
                            {/if}
                        {/foreach}
                    {/if}
                    {if $_modx->resource.alg_modal_popup}
                    <div class="corphow__button">
                        <button class="btn w-all" data-open-popup="{$_modx->resource.alg_modal_popup}">{if $_modx->resource.alg_modal_popup=='reg'}Зарегистрировать компанию{else}Выполнить{/if}</button>
                    </div>
                    {/if}
                </div>
            </div><!--corphow__cols-->
        </div>
    </div>
</section><!-- corphow -->