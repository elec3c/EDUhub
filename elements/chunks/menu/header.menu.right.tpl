<div>
{'!pdoMenu' | snippet: [
    'parents' => '-85,-14,-1615,-17,-9,-13,-32,-23,-30,-63.-40,-174,-371,-1385,-1132',
    'resources'=>'-18,-1130'
    'displayStart' => 1,
    'level' => 2,
    'limit' => 0,
    'tplOuter' => '@INLINE <ul class="header__menu header__navfix-menu">{$wrapper}</ul>',
    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
    'tplHere' => '@INLINE <li class="selected"><span>{$menutitle}</span></li>'
]}

{'!pdoMenu' | snippet: [
    'parents' => '0',
    'displayStart' => 1,
    'resources'=>'-1195',
    'level' => 1,
    'limit' => 0,
    'tplOuter' => '@INLINE <ul class="header__menu header__navfix-menu">{$wrapper}</ul>',
    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
]}
</div>