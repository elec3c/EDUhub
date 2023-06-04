{set $query = $.php.base64_decode($queue)}
{if $query}
<div class="cgcourse rollup-box">
    <div class="cghead">
        <div class="cgtitle">Запрос от {$date|dateAgo:'{"dateNow":0, "dateFormat":"d F Y H:i"}'}</div>
            <a href="#" class="link__more rollup-toggle">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">
        <div class="kpreport__block">
            <div class="kpreport__item lk__wraplr section__lr">
                {set $parseQuery = $_modx->runSnippet('!parseGetQuery', ['getQuery'=>$query])}
                <div class="kpreport__item-col">
                    {foreach $parseQuery as $k=>$v}
                        <div class="kpreport__item-prop">
                            <div class="kpreport__item-prop__label">{$k}</div>
                            {$v}
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div>
{/if}