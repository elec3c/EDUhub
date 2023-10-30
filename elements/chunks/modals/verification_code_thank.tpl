<div class="popup popup-thank" data-popup="verification_code_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title" id="verificationСodeMsg">Верификация Вашей компании <br> прошла успешно!</div>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup-thank" data-popup="verification_code_error">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title" id="verificationСodeErrorMsg">При верификация Вашей компании <br>произошла ошибка.</div>				
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup " data-popup="verification_code_auth">
  <div class="popup__content">
    <div class="popup__bg popup-close"></div>
    <div class="popup__container">
      <a class="popup__close popup-close">
        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z"
            stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
          <path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round"
            stroke-linejoin="round" />
          <path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round"
            stroke-linejoin="round" />
        </svg>
      </a>
      <div class="popup__body">

		<div class="popup__title" id="verificationСodeAuthMsg">Чтобы присоединиться к компании, <br>сотруднику необходимо авторизироваться на сайте!</div>				    
		
        <div class="popup__head">
          <div class="popup__title">Вход в личный кабинет</div>
        </div>

			
        {include 'file:chunks/forms/modal.user.auth.form.tpl'}

        <div class="auth__remember">
          <a href="" class="link" data-open-popup="password">Не помню пароль</a>
        </div>

        <div class="auth__bottom">
          Нет аккаунта? <a href="" class="link" data-open-popup="reg_user">Зарегистрироваться</a>
        </div>
      </div>
    </div>
    <!--popup__container-->
  </div>
</div>

       