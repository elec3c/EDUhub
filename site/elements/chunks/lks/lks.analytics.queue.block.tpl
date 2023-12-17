{set $query = $.php.base64_decode($queue)}
{if $query}
<div class="cgcourse rollup-box">
    <div class="cghead">
        <div class="cgtitle">Запрос от {$date|date_format:"%d.%m.%Y"}</div>
            <a href="#" class="link__more rollup-toggle">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">
        <div class="kpreport__block">
            <div class="kpreport__item lk__wraplr section__lr">
                {set $parseQuery = $_modx->runSnippet('!parseGetQuery', ['getQuery'=>$query])}
                {set $A = '!Unserialize' | snippet :['str'=>$query]}
                <div class="kpreport__item-col">
                    
                    {set $city_lat = $A["course_city"]}
                    {set $region_lat = $A["course_region"]}
                    {set $metro_lat = $A["course_metro"]}
                        
                    {set $city = $_modx->runSnippet("getListCities", ["name" => "city", "arr"=>1])}
                    {set $region = $_modx->runSnippet("getListCities", ["name" => "districts", "arr"=>1, "city"=>$city[$city_lat]])}
                    {set $metro = $_modx->runSnippet("getListCities", ["name" => "metro", "arr"=>1])}                                                            
                    {foreach $parseQuery as $k=>$v}
                        <div class="kpreport__item-prop">
                            <div class="kpreport__item-prop__label">{$k}</div>
                            {$v}
                        </div>
                    {/foreach}

                    {if $city[$city_lat]}
                        <div class="kpreport__item-prop">
                            <div class="kpreport__item-prop__label">Город</div>
                            {$city[$city_lat]}
                        </div>                    
                    {/if}
                    {if $region[$region_lat]}
                        <div class="kpreport__item-prop">
                            <div class="kpreport__item-prop__label">Регион</div>
                            {$region[$region_lat]}
                        </div>
                    {/if}
                    
                    {if $metro[$metro_lat]}
                        <div class="kpreport__item-prop">
                            <div class="kpreport__item-prop__label">Метро</div>
                            {$metro[$metro_lat]}
                        </div>
                    {/if}
                    
                    <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Дни и желаемое время</div>
                    {set $detail = json_decode(base64_decode($detail))}
                    {set $time_from = $detail["time_from"]}
                    {set $time_to = $detail["time_to"]}
                    {set $days = $detail["days"]}
                    {implode(", ",$days)}<br>{if $time_from} с {$time_from}{/if}{if $time_to} до {$time_to}{/if}                                                        
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
{/if}










                                   