<form method="post" id="office-auth-login">
    <input type="hidden" name="action" value="auth/formLogin">
    <input type="hidden" name="return" value="" />
    <input type="hidden" name="redirect" value="">
	{if $.get.invite}
	    <input type="hidden" name="invite" value="{$.get.invite}"/>
	{/if}    
    <input name="controll" class="no-display" type="text">
    <div class="input__row">
        <input type="text" name="username" class="input" id="office-auth-login-username" placeholder="Электронный адрес" required>
    </div>
    <div class="input__row">
        <input type="password" name="password" class="input" id="office-login-form-password" placeholder="Пароль">
        <button class="btn__eye pass-view"></button>
    </div>
    
    <button class="btn w-all" type="submit" id="btnAuthFormLogin">Войти</button>
</form>
