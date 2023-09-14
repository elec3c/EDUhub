<div class="popup " data-popup="confirm_phone">
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
					<div class="popup__title">Подтверждение телефона</div>
					<div class="popup__intro">На ваш номер было отправлено смс с кодом. <br> Введите его в поле ниже, для подтверждения телефона</div>
				</div>
				<form  method="post" id="confirm-code-form" enctype="multipart/form-data">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="action" value="checkCode">
					<input type="hidden" name="hash" value="0" id="confirmPhoneHash">
					<input type="hidden" name="form" value="Подтверждение телефона">
					<div class="input__row">
						<input type="text" name="code" class="input" id="confirmCode" placeholder="Код из смс" value="">
					</div>  
					<div class="">
						<button class="btn w-all" id="btnConfirmCode" data-userid="{$_modx->user.id}">Отправить</button>
					</div>
					<div class="form__linkbtn">
						<a href="javascript:void" id="moreCode" class="">Отправить код еще раз</a>
					</div>
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>