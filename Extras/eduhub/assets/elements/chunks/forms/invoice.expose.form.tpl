<form action="[[~[[*id]]]]" method="post" id="invoiceExposeForm">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="user_id" value="{$_modx->user.id}" />
    <div class="balance__action">
        <input type="text" name="payment" class="input" placeholder="Введите сумму">
        <button class="btn" type="submit" {if $_modx->user.manager}disabled{/if}>Заказать счет</button>
    </div>
</form>