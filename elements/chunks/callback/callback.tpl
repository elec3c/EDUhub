{var $email = ('contact.Email' | config) ?: 'emailsender' | config}
{var $subject  = $subject  ?: 'Обратный звонок с сайта '  ~ $_modx->config.http_host}
{var $emailto  = $emailto  ?: $_modx->config.emailto}
{var $validate = $validate ?: 'name:required,phone:required'}
{var $success  = $success  ?: 'Сообщение успешно отправлено.'}
{var $error    = $error    ?: 'В форме содержатся ошибки!'}
{var $form      = $tpl      ?: '@FILE chunks/forms/callback.form.tpl'}
{var $emailTpl  = $emailTpl      ?: '@FILE chunks/emails/email.tpl'}


<section class="ordform section__mg">
    <div class="container">	
        <div class="section__head">
            <h2 class="section__title"></h2>
        </div>
        <div class="ordform__wrap  section__lr">
            <div class="XMLID ordform__XMLID-left"></div>
            <div class="XMLID ordform__XMLID-right"></div>
            <div class="ordform__inner">
                    <div class="section__head">
                    <h2 class="section__title">Поможем тебе выбрать курс</h2>
                    <p class="section__intro">Если у тебя есть вопросы или ты не знаешь, что выбрать, оставь свой номер — мы позвоним и ответим на все твои вопросы</p>
                </div>
                <div class="ordform__form">
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
                <div class="ordform__img">
                    <img src="/assets/images/ordform-img.svg" alt="">
                </div>
            </div>
        </div>    
    </div>	
</section><!-- ordform -->