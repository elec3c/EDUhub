{if $_modx->resource.template == 16}
    {set $schoolid = $_modx->resource.scools_owner}
{/if}
<!-- Удаление скидки -->
<div class="popup " data-popup="call_to_school_reg{$id}">
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
					<div class="popup__title">Вы уверены, что хотите <br> передать ваши данные школе {($schoolid?:$_modx->resource.course_owner) | user:'fullname'} для обратного звонка?</div>
				</div>

                {var $email = ('contact.Email' | config) ?: 'emailsender' | config}
                {var $subject  = $subject  ?: 'Обратный звонок с сайта '  ~ $_modx->config.http_host}
                {var $emailto  = $emailto  ?: $_modx->config.emailto}
                {var $validate = $validate ?: 'name:required,phone:required,email:required'}
                {var $success  = $success  ?: 'Обратный звонок пользователем заказан!'}
                {var $error    = $error    ?: 'В форме содержатся ошибки!'}
                {var $form     = '@FILE chunks/forms/modal.call.user.form.tpl'}
                {var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}				
				
				
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => $form,
                    'groupid' => $groupid,
                    'schoolid' => $schoolid,
                    'hooks' => 'csrf,callRequest',
                    'emailSubject' => $subject,
                    'emailTo' => $emailto,
                    'emailFrom' => $_modx->config.emailsender,
                    'validate' => '',
                    'validationErrorMessage' => $error,
                    'successMessage' => $success
                ]}
                
			</div>
		</div><!--popup__container-->
	</div>
</div>