<form action="[[~[[*id]]]]" method="post">
    <input type="hidden" name="user_id" value="{$_modx->user.id}" />
    <div class="balance__action">
        <input type="text" name="payment" class="input" placeholder="Введите сумму">
        <button class="btn" type="submit">Заказать счет</button>
    </div>
</form>