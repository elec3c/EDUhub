{var $email = ('contact.Email' | config) ?: 'emailsender' | config}
{var $subject  = $subject  ?: 'Запрос о присоединении компании к парнерской программе с сайта '  ~ $_modx->config.http_host}
{var $emailto  = $emailto  ?: $_modx->config.emailto}
{var $validate = $validate ?: 'name:required'}
{var $success  = $success  ?: 'Запрос о присоединении компании успешно отправлен.'}
{var $error    = $error    ?: 'В форме содержатся ошибки!'}
{var $form      = $tpl      ?: '@FILE chunks/forms/findcp.form.user.add.tpl'}
{var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}
  
<div class="findcp__added findcp__bd">
    <div class="findcp__added-intro">Нет вашей компании в списке? Укажите компанию, которая вас интересует и отправьте запрос. Как только ваша компания присоединится к парнерской программе, мы сообщим вам об этом на email.</div>
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