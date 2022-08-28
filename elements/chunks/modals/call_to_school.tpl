<div class="popup " data-popup="call_to_school">
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
			<div class="popup__body">
				<div class="popup__head">
					<div class="popup__title">Заказать обратный звонок может только зарегистрированный пользователь</div>
                    
				</div>
                <button class="btn btn--purple w-all" data-open-popup="auth">Войти</button>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
				

                {*
                {var $email = ('contact.Email' | config) ?: 'emailsender' | config}
                {var $subject  = $subject  ?: 'Обратный звонок с сайта '  ~ $_modx->config.http_host}
                {var $emailto  = $emailto  ?: $_modx->config.emailto}
                {var $validate = $validate ?: 'name:required,phone:required'}
                {var $success  = $success  ?: 'Обратный звонок заказан!'}
                {var $error    = $error    ?: 'В форме содержатся ошибки!'}
                {var $form     = '@FILE chunks/forms/modal.call.form.tpl'}
                {var $emailTpl  = $emailTpl ?: '@FILE chunks/emails/email.tpl'}				
				
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => $form,
                    'hooks' => 'csrf,callRequest,EmailQueue',
                    'emailSubject' => $subject,
                    'emailTo' => $emailto,
                    'emailFrom' => $_modx->config.emailsender,
                    'validate' => $validate,
                    'validationErrorMessage' => $error,
                    'successMessage' => $success
                ]}         				
				*}
			</div>
		</div><!--popup__container-->
	</div>
</div>