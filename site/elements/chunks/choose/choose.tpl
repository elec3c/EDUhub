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
                        {set $color = ["","light-yellow","light-green"]}
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
    
    <div class="choose__bg choose__wrap">
        <div class="container">
            {insert 'file:chunks/forms/choose.form.tpl'}
        </div>
    </div>
    
</section><!-- choose -->