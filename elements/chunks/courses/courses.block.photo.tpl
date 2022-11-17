{if $user_id > 0}
{set $photo = $user_id | user:'photo'}
{/if}
{if $photo}
    <a href="{$id | url}"><img src="{$photo | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}"></a>
{else}
    <a href="{$id | url}"><img src="{$_modx->getPlaceholder('+nophoto') | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}"></a>
{/if}