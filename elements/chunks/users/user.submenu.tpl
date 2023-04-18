{set $pid= $pid?: $_modx->resource.parent}
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => $pid,
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li><a href="{$link}{if $.get.user_id}?user_id={$.get.user_id}{/if}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>