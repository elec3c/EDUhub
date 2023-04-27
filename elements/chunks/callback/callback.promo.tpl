<section class="ordform section__mgb">
    <div class="container">	
        <div class="section__head">
            <h2 class="section__title"></h2>
        </div>
        <div class="ordform__wrap {$color} section__lr section__pd--md">
            <div class="XMLID ordform__XMLID-left"></div>
            <div class="XMLID ordform__XMLID-right"></div>
                
                <!--<div class="section__head text--center mb--sm">
                    <h2 class="section__title fs--md">Остались вопросы?</h2>
                    <p class="section__intro">Отправьте нам ваш вопрос, мы оперативно ответим вам</p>
                </div>-->

            <div class="ordform__inner">
                    <div class="section__head">
                    <h2 class="section__title">Остались вопросы?</h2>
                    <p class="section__intro">Отправьте нам ваш вопрос, мы оперативно ответим вам</p>
                </div>
                <div class="ordform__form">
                    {var $email = ('contact.Email' | config) ?: 'emailsender' | config}
                    {var $subject  = $subject  ?: 'Вопрос с сайта '  ~ $_modx->config.http_host}
                    {var $emailto  = $emailto  ?: $_modx->config.emailto}
                    {var $validate = $validate ?: 'name:required,phone:required'}
                    {var $success  = $success  ?: 'Сообщение успешно отправлено.'}
                    {var $error    = $error    ?: 'В форме содержатся ошибки!'}
                    {var $form      = $tpl      ?: '@FILE chunks/forms/callback.promo.form.tpl'}
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
                </div>
                <div class="ordform__img">
                    <img src="/assets/images/ordform-img.svg" alt="">
                </div>
            </div>



            </div>
        </div>    
    </div>	
</section><!-- ordform -->




