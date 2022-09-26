{'!pdoMenu' | snippet: [
    'parents' => $_modx->resource.parent,
    'level' => 1,
    'limit' => 0,
    'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
    'tplHere' => '@INLINE <li  class="active">{$menutitle}</li>'
]}