{set $ts = time()}
<form action="{$_modx->resource.uri}" method="post" class="findcp__added-form" id="findcpFormAnonymousAdd">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="date_time" value="{$ts|date_format:"%Y/%m/%d %H:%M:%S"}">
    <input type="hidden" name="form" value="Поиск компании анонимным пользователем">
    <div class="findcp__added-cols">
        <div class="findcp__added-inputs">
<input type="hidden" name="user_id" value="{$_modx->user.id}">
            <input type="text" class="input" name="name" placeholder="Введите название компании *" required>
            <input type="email" class="input" name="email" placeholder="Укажите ваш email *" value="{$email}" required>
        </div>
        <button class="btn" type-"submit">Отправить</button>
    </div>
</form>