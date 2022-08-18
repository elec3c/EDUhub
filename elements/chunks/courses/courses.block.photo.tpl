{set $user_id = $user_id ?: $_modx->user.id}
{set $photo = $user_id | user:'photo'}
!!!!!!!!!{$photo}!!!!
{if $photo}
    <img src="{$photo | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}">
{else}
    <img src="{$_modx->getPlaceholder('+nophoto') | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}" />
{/if}
			       
