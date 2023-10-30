{'!pdoMenu' | snippet: [
    'parents' => '0',
    'displayStart' => 1,
    'level' => 1,
    'limit' => 0,
    'tplOuter' => '@INLINE <ul class="header__menu header__navfix-menu">{$wrapper}</ul>',
    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
]}