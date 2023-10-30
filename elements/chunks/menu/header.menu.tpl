{'!pdoMenu' | snippet: [
    'parents' => '0',
    'resources'=>'-1615'
    'displayStart' => 1,
    'level' => 1,
    'limit' => 0,
    'tplOuter' => '@INLINE <ul class="header__menu">{$wrapper}</ul>',
    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
    'tplHere' => '@INLINE <li class="selected"><span>{$menutitle}</span></li>'
]}