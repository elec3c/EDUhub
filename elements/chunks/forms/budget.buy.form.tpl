<form action="{$_modx->resource.uri}" method="POST" name="buy_phone" id="budgetBuyForm">
    {*<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">*}
    <input type="hidden" name="price" value="{$price}" />
    <input type="hidden" name="user_id" value="{$user_id}" />
    <input type="hidden" name="school_id" value="{$school_id}" />
    <input type="hidden" name="group_id" value="{$group_id}" />
    <button class="btn w-all" type="submit">Купить</button><!--dogovor-add-->
</form>