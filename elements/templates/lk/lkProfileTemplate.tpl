{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    {set $isCompany = ($user_id | ismember : ['Corporate'])}
    {set $isUsers = ($user_id | ismember : ['Users'])}
    {set $isOrganization = ($user_id | ismember : ['Organization'])}
    
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{if $isCompany}Профиль компании {$user_id | user:'fullname'}{else}Профиль пользователя{/if}</h2>
                </div>
                {*if $isUsers
                <button class="btn" data-open-popup="compisreg">Узнайте, зарегистрирована ли ваша компания на EDUhub</button><br><br>
                {/if*}
                
                {if $isUsers}
                {if !$.get.query}
                <div class="lk__profile lk__profile-p2cols section__mgb--sm">
                    <div class="lk__profile-lcol ">
                        <div class="form__title lk__profile-title">Личные данные</div>
                              {'!officeProfile' | snippet : [
                                 'tplProfile'=>'@FILE chunks/forms/lk.form.profile.edit.tpl',
                                 'profileFields'=>'email:50,fullname:50,mobilephone:17,photo,telegram,confirm_phone,specifiedpassword,confirmpassword',
                                 'requiredFields'=>'fullname,email',
                                 'syncUsername' => 'email',
                                 'user_id' => $user_id,
                                 'tplWrapper' => '@INLINE {$output}'
                             ]}
                    </div>
                    <div class="lk__profile-lcol ">
                        {if !$_modx->user.manager}
                        <div class="form__title lk__profile-title">Смена пароля</div>
                        {include 'file:chunks/forms/office.user.form.password.tpl'}
                        {/if}
                    </div>
                </div>
                {else}
                    
                    <a href="{24 | url}" class="btn w--all">Вернуться к просмотру профиля -></a>
                    <br><br><br>
                {/if}

                 {insert 'file:chunks/lk/lk.corporate.employee.connect.block.tpl'}
                {elseif $isCompany}
                <div class="lk__profile lk__profile-pcols">
                    <div class="lk__profile-lcol lk__profile-form--mw">
                        <div class="lk__profile-form">
                             <div class="form__title lk__profile-title">Редактирование личных данных</div>
                             
                              {'!officeProfile' | snippet : [
                                 'tplProfile'=>'@FILE chunks/forms/lk.form.profile.edit.tpl',
                                 'profileFields'=>'email:50,fullname:50,mobilephone:17,photo,telegram,confirm_phone,specifiedpassword,confirmpassword',
                                 'requiredFields'=>'fullname,email',
                                 'syncUsername' => 'email',
                                 'user_id' => $user_id,
                                 'tplWrapper' => '@INLINE {$output}'
                             ]}
                        </div>
                        
                        <div class="lk__profile-form">
                            {if !$_modx->user.manager}
                            <br>
                            <div class="lk__profile-form lk__profile-form--mw">
                                <div class="form__title lk__profile-title">Смена пароля</div>
                                {include 'file:chunks/forms/office.user.form.password.tpl'}
                            </div>
                            {/if}
                        </div>
                    </div>

                    <div class="lk__profile-rcol">
                        <div class="lk__profile-form">
                            <div class="form__title lk__profile-title hide-tablet-sm">Редактирование данных компании</div>
                            {var $validate = $validate ?: 'resident_country:required'}
                            {var $success  = $success  ?: 'Данные о компании успешно изменены.'}
                            {var $error    = $error    ?: 'В форме содержатся ошибки!'}
                            {var $form      = $tpl      ?: '@FILE chunks/forms/lk.form.company.edit.tpl'}
                            {'!AjaxForm'|snippet:[
                                'snippet' => 'FormIt',
                                'form' => $form,
                                'hooks' => 'csrf,profileCompanySave',
                                'validate' => $validate,
                                'validationErrorMessage' => $error,
                                'successMessage' => $success
                            ]}                            
                        </div>
                    </div>
                </div>                
                {/if}
                
            </div>
        </section><!-- lk -->        
        
  
{/block}
