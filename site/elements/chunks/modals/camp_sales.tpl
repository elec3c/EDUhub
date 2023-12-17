<div class="popup popup--camp" data-popup="camp_auth_sale">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__head">
					<div class="popup__title">Получить скидку может любой авторизованный либо анонимный пользователь с подтвержденным номером телефона</div>
				</div>

				<button class="btn btn--purple w-all" data-open-popup="auth">Войти</button>
				<button class="btn btn--purple w-all" data-open-popup="camp_sale_add_phone">Получить скидку без авторизации</button>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
				
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup--camp" data-popup="camp_sale_add_nophone">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
                <div class="popup__head">
                    <div class="popup__title">Получить скидку</div>
                    <div class="popup__intro"> Мы забронируем место для Вашего ребенка. 
                        Организатор свяжется с Вами для уточнения деталей и подтверждения брони</div>
                </div>
				<form action="" method="post" class="popup__form js-camp-inputs">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="Заказать обратный звонок">

                    <div class="popup__rowadd  js-camp-inputs-row">
                        <div class="popup__icols mw--sm">
                            <div class="input__row">
                                <div class="form__label">Пол ребенка</div>
                                <select class="styler styler--camp" name="gender" data-placeholder="выбрать">
                                    <!-- <option value=""></option> -->
                                    <option value="жен">жен</option>
                                    <option value="муж">муж</option>
                                </select>
                            </div>  
                            <div class="input__row">
                                <div class="form__label">Возраст ребенка</div>
                                <input name="age" class="input input--camp" placeholder="7">
                            </div>
                        </div>
                        <div class="popup__rowadd-action input__row">
                            <button class="popup__rowadd-btnact btncat--add js-camp-inputs-add"></button>
                            <button class="popup__rowadd-btnact btncat--remove hide js-camp-inputs-remove"></button>
                        </div>
                    </div>

					<div class="form__btn">
						<button class="btn btn--purple btn--sm">Забронировать место</button>
					</div>
				</form>

			</div>
		</div><!--popup__container-->
	</div>
</div>


<div class="popup popup--camp" data-popup="camp_sale_add_phone">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
                <div class="popup__head">
                    <div class="popup__title">Оформить промокод</div>
                    <div class="popup__intro">Мы забронируем место для Вашего ребенка. 
                        Организатор свяжется с Вами для уточнения деталей и подтверждения брони</div>
                </div>
                
                
                <form action="" method="post" class="popup__form js-camp-inputs">
				    <input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="Заказать обратный звонок">

                    <div class="popup__rowadd  js-camp-inputs-row">
                        <div class="popup__icols mw--sm">
                            <div class="input__row">
                                <div class="form__label">Пол ребенка</div>
                                <select class="styler styler--camp" name="gender" data-placeholder="выбрать">
                                    <!-- <option value=""></option> -->
                                    <option value="жен">жен</option>
                                    <option value="муж">муж</option>
                                </select>
                            </div>  
                            <div class="input__row">
                                <div class="form__label">Возраст ребенка</div>
                                <input name="age" class="input input--camp" placeholder="7">
                            </div>
                        </div>
                        <div class="popup__rowadd-action input__row">
                            <button class="popup__rowadd-btnact btncat--add js-camp-inputs-add"></button>
                            <button class="popup__rowadd-btnact btncat--remove hide js-camp-inputs-remove"></button>
                        </div>
                    </div>


                    <div class="input__row mw--sm">
                        <div class="form__label">Номер телефона <span class="req">*</span></div>
                        <input name="phone" class="input input--camp phone-mask" placeholder="+375" required>
                    </div>

                    <div class="popup__warn text--purple">Незарегестрированный пользователь может получить <span class="nowrap">только одну</span> скидку</div>

					<div class="form__btn">
						<button class="btn btn--purple btn--sm">Получить скидку</button>
					</div>

				</form>
                

			</div>
		</div><!--popup__container-->
	</div>
</div>
<div class="popup popup--camp" data-popup="camp_sms_code">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
                <div class="popup__head">
                    <div class="popup__title">Введите код из СМС</div>
                    <div class="popup__intro">Мы отправили его на номер +375(29)712****</div>
                </div>
				<form action="" method="post" class="popup__form">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="">

                    <div class="inputs__code js-code">
                        <input type="tel" class="input input--code input--camp js-input-code" placeholder="">
                        <input type="tel" class="input input--code input--camp js-input-code" placeholder="">
                        <input type="tel" class="input input--code input--camp js-input-code" placeholder="">
                        <input type="tel" class="input input--code input--camp js-input-code" placeholder="">
                        <input type="hidden" name="code" class="js-code-val">
                    </div>

                    <div class="popup__warn">Не получили код? <a href="#">Отправить повторно</a></div>

					<div class="form__btn">
						<button class="btn btn--purple btn--sm">Получить промокод</button>
					</div>
				</form>

			</div>
		</div><!--popup__container-->
	</div>
</div>
<div class="popup popup--camp popup-thank" data-popup="camp_sale_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
                <div class="popup__iconthank">
                    <svg width="41" height="40" viewBox="0 0 41 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="0.5" width="40" height="40" rx="20" fill="#D1FADF"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M28.9947 12.3168L17.0613 23.8334L13.8947 20.4501C13.3113 19.9001 12.3947 19.8668 11.728 20.3334C11.078 20.8168 10.8947 21.6668 11.2947 22.3501L15.0447 28.4501C15.4113 29.0168 16.0447 29.3668 16.7613 29.3668C17.4447 29.3668 18.0947 29.0168 18.4613 28.4501C19.0613 27.6668 30.5113 14.0168 30.5113 14.0168C32.0113 12.4834 30.1947 11.1334 28.9947 12.3001V12.3168Z" fill="#29AA6F"/>
                        </svg>                        
                </div>
				<div class="popup__title">Спасибо!</div>
				<div class="popup__intro">Ваш промокод на скидку находится <br> в разделе промокодов</div>
			
                <div class="popup__buttons">
                    <button class="btn btn--purple btn--sm popup-close">Ок</button>
                </div>
			</div>
		</div><!--popup__container-->
	</div>
</div>