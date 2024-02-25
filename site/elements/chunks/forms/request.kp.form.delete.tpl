<form action="{$_modx->resource.uri}" method="post" id="requestKpFormDelete">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="tender_id" value="{$.get.delete}"/>    
    <input type="hidden" name="user_id" value="{$_modx->user.id}"/>
    <button class="btn" type="submit">{$btn?:"Удалить"}</button>
</form>