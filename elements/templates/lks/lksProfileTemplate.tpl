{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мой профиль</h2>
                </div>

                <div class="lk__profile">
                    {'!officeProfile' | snippet : [
                        'tplProfile'=>'@FILE chunks/forms/lks.form.profile.edit.tpl',
                        'profileFields'=>'username,fullname,email,mobilephone,photo,city,unp,bik,rs,bank,addr_bank,desc,specifiedpassword,confirmpassword'
                    ]} 

                    <div class="lk__profile-form">
                        <div class="form__title lk__profile-title">Мультимедиа</div>
                        {'!ufform' | snippet : [
                            'class'=>'modUser',
                            'list'=>'school',
                            'parent'=>$_modx->user.id,
                            'dropzone'=>'{"maxFilesize":4,"maxFiles":5,"acceptedFiles":".jpg, .jpeg, .gif, .png","template":"edit"}'
                        ]}
                       
                    </div>    
                    
                    <div class="lk__profile-form lk__profile-form--mw">
                        <div class="form__title lk__profile-title">Смена пароля</div>
                        <form action="" method="post" id="office-profile-form-password">
                            <input type="hidden" name="email" value="{$_modx->user.email}" placeholder="{'office_profile_email' | lexicon}"/>
                            <input type="hidden" name="fullname" value="{$_modx->user.fullname}" class="input" placeholder="Наименование организации">
                            <input type="hidden" name="username" value="{$_modx->user.username}" class="input" placeholder="Логин">
                            <div class="input__row">
                                <input type="password" class="input" name="specifiedpassword" value="" placeholder="Новый пароль" class="form-control"/>
                                <button class="btn__eye pass-view"></button>
                                <div class="help-block message">{$error_specifiedpassword}</div>
                            </div>            
                            
                            <div class="input__row">            
                                <input type="password" class="input" name="confirmpassword" value="" placeholder="Повторите новый пароль" class="form-control"/>
                                <button class="btn__eye pass-view"></button>
                                <div class="help-block message">{$error_confirmpassword}</div>
                            </div>            
                        
                            <button type="submit" class="btn w-all">Сохранить</button>
                        </form>
                    </div>
                </div>
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
