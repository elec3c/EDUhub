<form action="{$_modx->resource.uri}" method="post" id="addressFormDelete">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="cities_id" value="{$.get.delete}" />
    <button class="btn" type="submit">Удалить адрес</button>
</form>