{var $email = ('contact.Email' | config) ?: 'emailsender' | config}
{var $subject  = $subject  ?: 'Сообщение с формы обратной связи с сайта '  ~ $_modx->config.http_host}
{var $emailto  = $emailto  ?: $_modx->config.emailto}
{var $validate = $validate ?: 'name:required,email:required,message:required'}
{var $success  = $success  ?: 'Сообщение успешно отправлено.'}
{var $error    = $error    ?: 'В форме содержатся ошибки!'}
{var $form      = $tpl      ?: '@FILE chunks/forms/feedback.form.tpl'}
{var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}

<div class="form contacts__form">
    <div class="form__title">Обратная связь</div>
    {'!AjaxForm'|snippet:[
        'snippet' => 'FormIt',
        'form' => $form,
        'hooks' => 'csrf,EmailQueue',
        'emailSubject' => $subject,
        'emailTo' => $emailto,
        'emailFrom' => $_modx->config.emailsender,
        'validate' => $validate,
        'validationErrorMessage' => $error,
        'successMessage' => $success
    ]}                       
</div>
            



