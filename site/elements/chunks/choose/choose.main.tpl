{set $choose =  $_modx->resource.choose?:$_modx->config.site_start | resource :'choose'}
{set $choose_title =  $_modx->resource.choose_title?:$_modx->config.site_start | resource :'choose_title'}
{set $choose_text =  $_modx->resource.choose_text?:$_modx->config.site_start | resource :'choose_text'}

{set $choose_search =  $_modx->resource.choose_search?:$_modx->config.site_start | resource :'choose_search'}
{set $choose_search_title =  $_modx->resource.choose_search_title?:$_modx->config.site_start | resource :'choose_search_title'}
{set $choose_search_text =  $_modx->resource.choose_search_text?:$_modx->config.site_start | resource :'choose_search_text'}


<section class="choose section__mg" id="choose">
    <div class="container">
        <div class="choose_how section__lr section__mgb">
            <div class="choose_how__wrap">
                <div class="choose_how__head">
                    {if $choose_title}
                        <h3 class="choose_how__title">{$choose_title}</h3>
                        
                    {/if}
                    {if $choose_text}
                        <p class="choose_how__subtitle">{$choose_text}</p>
                    {/if}
                    {if 'standard' | mobiledetect}
                    {include 'file:chunks/nav/nav.button.queue.add.tpl'}
                    {/if}
                    
                </div>
                <div class="choose_how__border"></div>
                <div class="choose_how__items-wrapper"><div class="choose_how__items">
                    {if $choose}
                        {set $rows = json_decode($choose, true)}
                        {set $color = ["","light-yellow","light-green","light-yellow","light-green"]}
                        {foreach $rows as $idx => $row}
                            {if $idx != 0 && $color[$idx]}
                                {set $class = "choose_how__item " ~ $color[$idx]}
                            {else}
                                {set $class = "choose_how__item"}
                            {/if}
                            <div class="{$class}">
                                <div class="choose_how__item-header">
                                    <div class="choose_how__item-icon">
                                        <img src="/assets/images/{$row.image}" alt="{$row.title}">
                                    </div>
                                    {if $row.title}<b class="choose_how__item-title">{$row.title}</b>{/if}
                                </div>
                                {if $row.text}<p class="choose_how__item-text">{$row.text}</p>{/if}
                            </div>
                        {/foreach}
                    {/if}
                </div></div>
                {if !('standard' | mobiledetect)}                
                <div class="choose_how__footer">
                    {include 'file:chunks/nav/nav.button.queue.add.tpl'}
                </div>
                {/if}
            </div>
        </div>
        <!--choose_how-->

{if $_modx->resource.id == $_modx->config.start}    
    
                <div class="choose_how choose_howno section__lr section__mgb">
                    <div class="choose_howno__wrap">
                        <div class="choose_howno__head">
                            {if $choose_search_title}
                                <h3 class="choose_how__title">{$choose_search_title}</h3>
                            {/if}
                            {if $choose_search_text}
                                <p class="choose_how__subtitle">{$choose_search_text}</p>
                            {/if}                            
                        </div>

                        <div class="choose_howno__items">
                            {if $choose_search}
                                {set $rows = json_decode($choose_search, true)}
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
                                        <p>{if $row.title}<b>{$row.title}</b><br>{/if}{if $row.text}{$row.text}{/if}</p>
                                    </div>                                
                                {/foreach}

                            {/if}
                        </div>
                    </div>
                </div>
{/if}    
    
    
    </div>
   
   
   

                
      {*<div class="container">*}
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
        
        
        

                
        
    {*</div> *}  
    {*<div class="choose__bg choose__wrap" id="pick_up_a_course">
        <div class="container">
            {include 'file:chunks/forms/choose.form.tpl'}
        </div>
    </div>*}
    
</section><!-- choose -->
