<section class="steps section__mgb--sm">
    <div class="container">
        <div class="section__head mb--sm">
        {if $_modx->resource.alg_title}
            <h2 class="section__title fs--md">{$_modx->resource.alg_title}</h2>
        {/if}
        </div>
        {if $_modx->resource.alg}
        <div class="steps__items">
            {set $rows = json_decode($_modx->resource.alg, true)}
            {foreach $rows as $idx => $row}
            <div class="steps__item">
                {if $row.title}
                    <h3 class="steps__item-title">{$row.title}</h3>
                {/if} 
                {if $row.text}
                    <div class="steps__item-text">{$row.text}</div>
                {/if}                
                <div class="steps__item-number">шаг {$idx + 1}</div>
            </div>
            {/foreach}
            <div class="hide-tablet"></div><div class="hide-tablet"></div>
            <div class="steps__item steps__item--empty steps__item--bottom">
                <button class="btn w-all" data-open-popup="{$_modx->resource.alg_modal_popup}">{if $_modx->resource.alg_modal_popup=='reg'}Зарегистрировать компанию{else}Выполнить{/if}</button>
            </div>            
        </div>                    
        {/if}
        
    </div>
</section><!-- steps -->
 