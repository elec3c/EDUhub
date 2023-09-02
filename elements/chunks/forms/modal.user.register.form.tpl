					<form  method="post" id="office-auth-register">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">
							{*
							<div class="input__row">
								<input type="text" name="username" class="input" placeholder="Логин">
							</div>
							*}     
							<div class="input__row">
								<input type="tel" name="mobilephone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="email" name="email" class="input" placeholder="Электронная почта">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль" required>
								<button class="btn__eye pass-view"></button>
							</div>
							<div class="input__row">
								<input type="text" name="fullname" class="input" placeholder="Имя">
							</div>    
							
							{if $.get.invite}
							    <input type="hidden" name="invite" value="{$.get.invite}"/>
							{/if}
							<input type="hidden" name="group" value="users"/>
							<input type="hidden" name="action" value="auth/formRegister"/>
							<button id="user-register" class="btn w-all">Зарегистрироваться</button>
							<label class="form__polit">
								<input type="checkbox" name="polit" id="user-polit" class="styler" required>
								<span>Ознакомлен и согласен с <a href="{$_modx->makeUrl(370)}">пользовательским соглашением</a> и <a href="{$_modx->makeUrl(8)}">политикой конфиденциальности</a></span>
							</label>
						</div>
					</form>