<form action="{$_modx->resource.uri}" method="post" id="queueFormDelete">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="queue_id" value="{$.get.delete}" />
    <button class="btn" type="submit">Удалить запрос</button>
</form>
