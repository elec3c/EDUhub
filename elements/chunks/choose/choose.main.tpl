<section class="choose section__mg" id="choose">
    <div class="container">
        <div class="choose_how section__lr section__mgb">
            <div class="choose_how__wrap">
                <div class="choose_how__head">
                    {if $_modx->resource.choose_title}
                        <h3 class="choose_how__title">{$_modx->resource.choose_title}</h3>
                    {/if}
                    {if $_modx->resource.choose_text}
                        <p class="choose_how__subtitle">{$_modx->resource.choose_text}</p>
                    {/if}
                </div>
                <div class="choose_how__border"></div>
                <div class="choose_how__items">
                    {if $_modx->resource.choose}
                        {set $rows = json_decode($_modx->resource.choose, true)}
                        {set $color = ["","light-yellow","light-green","light-yellow","light-green"]}
                        {foreach $rows as $idx => $row}
                            {if $idx != 0 && $color[$idx]}
                                {set $class = "choose_how__item " ~ $color[$idx]}
                            {else}
                                {set $class = "choose_how__item"}
                            {/if}
                            <div class="{$class}">
                                <div class="choose_how__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.title}">
                                </div>
                                <p>{if $row.title}<b>{$row.title}</b> <br>{/if}{if $row.text}{$row.text}{/if}</p>
                            </div>
                        {/foreach}
                    {/if}
                </div>
            </div>
        </div>
        <!--choose_how-->
        
        
    </div>
   
   
    <div class="container">
        {*<div class="choose_how section__lr section__mgb" style="background-color:#ba97f9;">
            <div class="choose_how__wrap">
                <div class="choose_how__head">
                    {if $_modx->resource.choose_search_title}
                        <h3 class="choose_how__title">{$_modx->resource.choose_search_title}</h3>
                    {/if}
                    {if $_modx->resource.choose_search_text}
                        <p class="choose_how__subtitle">{$_modx->resource.choose_search_text}</p>
                    {/if}
                </div>
                <div class="choose_how__border"></div>
                <div class="choose_how__items">
                    {if $_modx->resource.choose_search}
                        {set $rows = json_decode($_modx->resource.choose_search, true)}
                        {set $color = ["","light-yellow","light-green","light-yellow","light-green"]}
                        {foreach $rows as $idx => $row}
                            {if $idx != 0 && $color[$idx]}
                                {set $class = "choose_how__item " ~ $color[$idx]}
                            {else}
                                {set $class = "choose_how__item"}
                            {/if}
                            <div class="{$class}">
                                <div class="choose_how__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.title}">
                                </div>
                                <p>{if $row.title}<b>{$row.title}</b> <br>{/if}{if $row.text}{$row.text}{/if}</p>
                            </div>
                        {/foreach}
                    {/if}
                </div>
            </div>
        </div>*}
        <!--choose_how-->
        
        
                <div class="choose_how choose_howno section__lr section__mgb">
                    <div class="choose_howno__wrap">
                        <div class="choose_howno__head">
                            {if $_modx->resource.choose_search_title}
                                <h3 class="choose_how__title">{$_modx->resource.choose_search_title}</h3>
                            {/if}
                            {if $_modx->resource.choose_search_text}
                                <p class="choose_how__subtitle">{$_modx->resource.choose_search_text}</p>
                            {/if}                            
                        </div>

                        <div class="choose_howno__items">
                            {if $_modx->resource.choose_search}
                                {set $rows = json_decode($_modx->resource.choose_search, true)}
                                {set $color = ["","light-yellow","light-green","light-yellow","light-green"]}
                                {foreach $rows as $idx => $row}
                                    {if $idx != 0 && $color[$idx]}
                                        {set $class = "choose_howno__item " ~ $color[$idx]}
                                    {else}
                                        {set $class = "choose_howno__item"}
                                    {/if}
                                    <div class="{$class}">
                                        <div class="choose_howno__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.title}">
                                        </div>
                                        <p>{if $row.title}<b>{$row.title}</b> <br>{/if}{if $row.text}{$row.text}{/if}</p>
                                    </div>                                
                                {/foreach}
                            {*<div class="choose_howno__item">
                                <div class="choose_howno__item-icon"><img src="assets/images/icons/edit-2.svg" alt=""></div>
                                <p><b>Шаг 1.</b> <br> Заполните параметры курса, который вы ищете</p>
                            </div>
                            <div class="choose_howno__item light-yellow">
                                <div class="choose_howno__item-icon"><img src="assets/images/icons/notification.svg" alt="">
                                </div>
                                <p><b>Шаг 2.</b> <br> Жмите СООБЩИТЬ О НОВЫХ КУРСАХ</p>
                            </div>
                            <div class="choose_howno__item light-green">
                                <div class="choose_howno__item-icon"><img src="assets/images/icons/message-notif.svg" alt=""></div>
                                <p><b>Шаг 3.</b> <br> Мы сообщим о новых курсах по вашему запросу</p>
                            </div>*}
                            {/if}
                        </div>
                    </div>
                </div>
                <!--choose_how-->        
        
    </div>   
    
    <div class="choose__bg choose__wrap" id="pick_up_a_course">
        <div class="container">
            {include 'file:chunks/forms/choose.form.tpl'}
        </div>
    </div>
    
</section><!-- choose -->