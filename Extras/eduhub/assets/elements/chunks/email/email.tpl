<ul>
    {foreach $.post as $name => $value}
        {if $value && $name not in ['pageId', 'policy', 'csrf']}
            <li><b>{$_modx->lexicon('email_' ~ $name)}</b>: {$value}</li>
        {/if}
    {/foreach}
    {set $page = ('site_url' | config) ~ ($.post.pageId | url)}
    <li><b>Форма отправлена со страницы:</b> {$page}</li>
    <hr>
    {if $.server.REMOTE_ADDR}
        <li><b>IP:</b> {$.server.REMOTE_ADDR}</li>
    {/if}
    {if $.server.GEOIP_CITY}
        <li><b>City:</b> {$.server.GEOIP_CITY}</li>
    {/if}
</ul>