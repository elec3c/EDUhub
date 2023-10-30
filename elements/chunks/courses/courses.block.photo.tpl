{set $w = $w?:'400'}
{set $h = $h?:'400'}

{if $user_id > 0}

    {set $photo = $user_id | user:'photo'}
    {set $pageID = '!getSchoolsPageID' | snippet: ['schools_id' => $user_id]?:0}
    
    {if ($user_id | ismember : 'Organization') && ($pageID > 0)}
        {set $name = $pageID | resource:'pagetitle'}
    {/if}
    {set $fullname= $name?:$user_id | user : 'fullname' | htmlent}
    
{/if}

{if $_modx->resource.template == 8}
    {set $url = $pageID | url}
{else}
    {set $url = $id | url}
{/if}

{if $photo}
    {if $url && $href != 'hide'}
        <a href="{$url}">
    {/if}
        <img src="{$photo | phpthumbon : 'w=400&h=400&q=99&bg=ffffff'}" alt="{$fullname}" width="{$w~'px'}" height={$h~'px'}/>
    {if $url && $href != 'hide'}
        </a>
    {/if}
{else}
    {set $photo = '/assets/images/no-photo.png'}
    {if $url && $href != 'hide'}
        <a href="{$url}">
    {/if}
        <img src="{$photo | phpthumbon : 'w=400&h=400&zc=1&q=99'}" alt="{$user_id | user : 'username' | htmlent}" width="{$w}" height={$h}/></a>
    {if $url && $href != 'hide'}
        </a>
    {/if}
{/if}