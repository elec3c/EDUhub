{if $user_id > 0}
{set $photo = $user_id | user:'photo'}
{/if}
{set $url = $id | url}
{if $photo}
    {if $url}
        <a href="{$url}">
    {/if}
        <img src="{$photo | phpthumbon : 'w=30&h=30&zc=1&q=99'}" alt="{$user_id | user : 'fullname' | htmlent}">
    {if $url}        
        </a>
    {/if}
{else}
    {if $url}
        <a href="{$url}">
    {/if}
        <img src="{$_modx->getPlaceholder('+nophoto') | phpthumbon : 'w=30&h=30&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}"></a>
    {if $url}        
        </a>
    {/if}
{/if}