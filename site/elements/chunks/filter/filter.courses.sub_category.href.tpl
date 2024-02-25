
{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}


<div class="choose__inputs-item first-tablet w-270">
    <div class="checkselect check-select">
        {if $_modx->resource.parent == 85}
            <div class="checkselect__select placeholder check-select-toggle check-select-text">Подкатегория</div>
        {else}
            <div class="checkselect__select placeholder check-select-toggle check-select-text">Категория</div>
        {/if}
        <div class="checkselect__dropdown check-select-dropdown">
                {'!pdoMenu' | snippet: [
                    'parents' => $_modx->resource.id,
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <div class="checkselect__list">{$wrapper}</div>',
                    'tpl' => '@INLINE <a href="{$link}" title="{$menutitle}" class="checkselect__list-link">{$menutitle}</a>',
                    'tplHere' => '@INLINE <a href="{$link}" title="{$menutitle}" class="checkselect__list-link">{$menutitle}</a>',
                ]}            
        </div>
    </div> 
</div>