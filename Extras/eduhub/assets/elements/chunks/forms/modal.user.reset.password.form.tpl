<form method="post" id="office-auth-login">
    <input type="hidden" name="action" value="auth/formLogin">
    <input name="controll" class="no-display" type="text">
    <div class="input__row">
        <input type="email" name="email" class="input" placeholder="Электронная почта" required>
    </div>
    <label class="form__polit">
        <input type="checkbox" name="polit" class="styler" required>
        <span>Ознакомлен с <a href="{$_modx->makeUrl(370)}">пользовательским соглашением</a> и <a href="{$_modx->makeUrl(8)}">политикой конфиденциальности</a></span>
    </label>
    <div class="form__btn">
        <button class="btn w-all">Отправить</button>
    </div>
</form>