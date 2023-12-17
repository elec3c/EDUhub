{var $email = ('contact.Email' | config) ?: 'emailsender' | config}
{var $subject  = $subject  ?: 'Запрос о присоединении компании к парнерской программе с сайта '  ~ $_modx->config.http_host}
{var $emailto  = $emailto  ?: $_modx->config.emailto}
{var $validate = $validate ?: 'name:required,email:required'}
{var $success  = $success  ?: 'Запрос о присоединении компании успешно отправлен.'}
{var $error    = $error    ?: 'В форме содержатся ошибки!'}
{var $form      = $tpl      ?: '@FILE chunks/forms/findcp.form.anonymous.add.tpl'}
{var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}

<div class="findcp__added findcp__bd">
    <div class="findcp__added-intro">Нет вашей компании в списке? Оставьте свой мэйл и как только ваша компания присоединится к партнерской программе, мы отправим вам сообщение об этом.</div>                
    {'!AjaxFormitLogin'|snippet:[
        'snippet' => 'FormIt',
        'form' => $form,
        'hooks' => 'companyRequest,FormItSaveForm,EmailQueue',
        'emailSubject' => $subject,
        'emailTo' => $emailto,
        'spamProtection'=>0,
        'redirectTo'=>$_modx->resource.id,
        'emailFrom' => $_modx->config.emailsender,
        'validate' => $validate,
        'validationErrorMessage' => $error,
        'successMessage' => $success
    ]}

</div>