{if $user_id > 0}
{set $photo = $user_id | user:'photo'}
{/if}
{if $photo}
    <img src="{$photo | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'fullname' | htmlent}">
{else}
    {set $photo = '/assets/images/no-photo.png'}
    <img src="{$photo | phpthumbon : 'w=460&h=280&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}">
{/if}