<div class="popup popup-reg" data-popup="reg">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body reg">
				<div class="reg__head reg__cols">
					<div class="popup__title">Регистрация аккаунта</div>

					<div class="reg__navt">
						<ul>
							<li><a href="#" data-tab="user" class="btn reg-navt-link active">Пользователь</a></li>
							<li><a href="#" data-tab="center" class="btn reg-navt-link">Учебный центр</a></li>
						</ul>
					</div>
				</div>
				
				<div class="reg__tab reg-tab active" data-tab="user">
					<form action="" method="post">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">
							<div class="input__row">
								<input type="text" name="login" class="input" placeholder="Логин">
							</div>     
							<div class="input__row">
								<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="text" name="email" class="input" placeholder="Электронная почта">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль">
								<button class="btn__eye pass-view"></button>
							</div>
							<div class="input__row">
								<input type="text" name="name" class="input" placeholder="Имя">
							</div>    

							<button class="btn w-all">Зарегистрироваться</button>

							
							<label class="form__polit">
								<input type="checkbox" name="polit" class="styler">
								<span>Ознакомлен с <a href="">публичной офертой</a></span>
							</label>
						</div>
					</form>
				</div>

				<div class="reg__tab reg-tab" data-tab="center">
					<form action="" method="post">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">   
							<div class="input__row">
								<input type="text" name="name" class="input" placeholder="Наименование организации">
							</div>   
							<div class="input__row">
								<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="text" name="login" class="input" placeholder="Логин">
							</div> 
							<div class="input__row">
								<input type="text" name="city" class="input" placeholder="Город">
							</div>      
							<div class="input__row">
								<input type="text" name="email" class="input" placeholder="Электронная почта">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль">
								<button class="btn__eye pass-view"></button>
							</div>  

							
							<label class="form__polit">
								<input type="checkbox" name="polit" class="styler">
								<span>Ознакомлен с <a href="">публичной офертой</a></span>
							</label>

							<button class="btn w-all">Зарегистрироваться</button>
						</div>
					</form>
				</div>
				
			</div>
		</div><!--popup__container-->
	</div>
</div>