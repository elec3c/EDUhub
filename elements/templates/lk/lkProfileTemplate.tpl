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
                    
                    {if $.get.edit is empty}
                    <div class="lk__profile-form lk__profile-form--mw">
                        <div class="form__title lk__profile-title">Личные данные</div>
                        <div class="profile-edit">
                            <div class="profile-edit__left">
                                <div class="profile-edit-person">
                                    <div class="profile-edit-person__img">
                                        {if $_modx->user.photo is empty}
                                            <img loading="lazy" src="assets/images/profile-edit-person-img.png" alt="img">
                                        {else}
                                            <img loading="lazy" src="{$_modx->user.photo}" alt="img">
                                        {/if}
                                    </div>
                                <br/>    
                                    {if $_modx->user.username &&  $_modx->user.username != $_modx->user.email}
                                    <input name="controll" class="no-display" type="text">
                                    <div class="input__row">
                                        <label class="col-md-6 col-form-label">Логин</label>
                                        <input type="text" name="login" class="input" placeholder="Логин" value="{$_modx->user.username}" disabled>
                                    </div>   
                                    {/if}
                                    {if $_modx->user.email}
                                    <div class="input__row">
                                        <label class="col-md-6 col-form-label">Email</label>
                                        <input type="text" name="email" class="input" placeholder="Электронная почта" value="{$_modx->user.email}" disabled>
                                    </div>    
                                    {/if}
                                    {if $_modx->user.fullname}
                                    <div class="input__row">
                                        <label class="col-md-6 col-form-label">Полное имя</label>
                                        <input type="text" name="name" class="input" placeholder="Имя" value="{$_modx->user.fullname}" disabled>
                                    </div>   
                                    {/if}
                                    {if $_modx->user.mobilephone}
                                    <div class="input__row">
                                        <label class="col-md-6 col-form-label">Телефон</label>
                                        <input type="tel" name="mobilephone" class="input phone-mask" placeholder="Телефон" value="{$_modx->user.mobilephone}" disabled>
                                    </div>
                                    {/if}
                                    {if $_modx->user.telegram}
                                    <div class="input__row">
                                        <label class="col-md-6 col-form-label">Ник к телеграмме</label>
                                        <input type="text" name="telegram" class="input" placeholder="Ник в телеграм" value="{$_modx->user.telegram}" disabled>
                                    </div>  
                                    {/if}

                            <a class="btn w-all" href="{$_modx->resource.id | url : [] : ['edit' => 1]}" class="profile-edit__btn">
                                Редактировать
                            </a>
                            <br/><br/>

                            

                            
                        </div>
                    </div>

                    <br/><br/>
                    <div class="lk__profile-form lk__profile-form--mw">
                        <div class="form__title lk__profile-title">Смена пароля</div>
                        {'!officeProfile' | snippet : [
                             'tplProfile'=>'@FILE chunks/forms/user.form.password.edit.tpl',
                             'requiredFields'=>'email'
                         ]}                           
                    </div>
                    {else}
                    <div class="lk__profile-form lk__profile-form--mw">
                        <div class="form__title lk__profile-title">Редактирование личных данных</div>
                        {'!officeProfile' | snippet : [
                             'tplProfile'=>'@FILE chunks/forms/user.form.profile.edit.tpl',
                             'profileFields'=>'username,fullname,email,mobilephone,photo,telegram'
                         ]}   
                    </div>                
                    {/if}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}
