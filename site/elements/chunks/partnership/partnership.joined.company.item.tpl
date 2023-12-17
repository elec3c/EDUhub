{set $user_id = $_pls['tv.scools_owner']?:$scools_owner}

<a href="{$id | url}" class="joined__item">
    <div class="joined__item-photo">
        {include 'file:chunks/scools/scools.block.photo.tpl' user_id=$user_id}
    </div>
    <div class="joined__item-info">
        <div class="joined__item-title">{$pagetitle}</div> 
    </div>
</a>