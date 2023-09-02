<form method="post" id="office-auth-register-urlico">
	<div class="reg__cols">
		<input name="controll" class="no-display" type="text">
		<div class="input__row">
			<input type="text" name="fullname" class="input" placeholder="Бренд">
		</div>
		<div class="input__row">
			<input type="tel" name="mobilephone" class="input phone-mask" placeholder="Телефон">
		</div>
		{*
		<div class="input__row">
			<input type="text" name="username" class="input" placeholder="Логин">
		</div>
		
		<div class="input__row">
			<input type="text" name="city" class="input" placeholder="Юридический адрес">
		</div>*}
		<div class="input__row">
			<input type="email" name="email" class="input" placeholder="Электронная почта">
		</div>
		<div class="input__row">
			<input type="password" name="password" class="input" placeholder="Пароль">
			<button class="btn__eye pass-view"></button>
		</div>
		<label class="form__polit">
			<input type="checkbox" id="organization-polit" name="polit" class="styler" required>
			<span>Ознакомлен и согласен с <a href="{$_modx->makeUrl(370)}">пользовательским соглашением</a> и <a href="{$_modx->makeUrl(8)}">политикой конфиденциальности</a></span>
		</label>
		<input type="hidden" name="urlico" value="1" />
		<input type="hidden" name="group" value="organization" />
		<input type="hidden" name="action" value="auth/formRegister" />
		<button id="organization-register" class="btn w-all">Зарегистрироваться</button>
	</div>
</form>