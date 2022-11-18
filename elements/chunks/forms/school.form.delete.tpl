<form action="{$_modx->resource.uri}" method="post" id={"school"~$.php.ucfirst($.get.type)~"FormDelete"}>
        <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="uid" value="{$.get.delete}"/>
    <input type="hidden" name="type" value="{$.get.type}"/>    
    <input type="hidden" name="school" value="{$_modx->user.id}"/>
    <button class="btn" type="submit">{$btn?:"Удалить"}</button>
</form>