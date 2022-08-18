{var $email = ('contact.Email' | config) ?: 'emailsender' | config}
{var $subject  = $subject  ?: 'Обратный звонок с сайта '  ~ $_modx->config.http_host}
{var $emailto  = $emailto  ?: $_modx->config.emailto}
{var $validate = $validate ?: 'name:required,phone:required'}
{var $success  = $success  ?: 'Сообщение успешно отправлено.'}
{var $error    = $error    ?: 'В форме содержатся ошибки!'}
{var $form      = $tpl      ?: '@FILE chunks/forms/callback.form.tpl'}
{var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}

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