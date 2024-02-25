<form action="{$_modx->resource.uri}" method="post" id="userFormDelete">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="user_id" value="{$.get.delete}" />
    <button class="btn" type="submit">Удалить пользователя</button>
</form>