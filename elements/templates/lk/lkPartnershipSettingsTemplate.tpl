{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Партнерские программы</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1122'}

                <div class="ppsettings">
                    <div class="ppsettings__cols">
                        <div class="ppsettings__col">
                            {set $employee_code = $user_id | user:'employee_code'}
                            
                            <div class="ppsettings__item">
                                <div class="input__row">
                                    <input type="url" name="employee_link" class="input" placeholder="Тут появится ссылка" id="employee-code-{$user_id}" value="{if $employee_code!=''}{'!createEmployeeLink'|snippet:['user_id' => $user_id]}{/if}">
                                </div>
                                
                                {if !$employee_code}
                                    <input type="text" class="btn w-all generate-link-employee" data-user="{$user_id}" value="Сгенерировать ссылку для сотрудников">
                                {else}
                                    <input type="text" class="btn btn--red w-all reset-link-employee" data-user="{$user_id}" value="Сбросить ссылку для сотрудников">
                                {/if}
                            </div>

                            {set $partnershipJoinOffer = $_modx->user.partnership_join_offer}
                            {if !$partnershipJoinOffer}
                            <div class="ppsettings__item">
                                <div class="input__row">
                                    <input class="btn {if !$partnershipJoinOffer}btn--purple{else}btn--red{/if} w-all" id="btnJoinOffer" value="{if !$partnershipJoinOffer}Присоединиться к оферте{else}Отсоединиться от оферты{/if}"/>
                                </div>  
                                <input type="hidden" id="partnershipJoinOffer" value="{$partnershipJoinOffer}">
                                
                                <label class="form__lcheck">
                                    <input type="checkbox" name="policy" value="1" class="styler" id="policy" {if $partnershipJoinOffer}checked disabled{/if}>
                                    <span>С офертой ознакомлены и согласны</span>
                                </label>
                            </div>
                            {/if}
                            
                            
                        </div>

                        <div class="ppsettings__col">
                            <div class="ppsettings__item">
                                <div class="input__row">
                                    <button class="btn w-all">Сгенерировать промокод</button>
                                </div>    
                                <div class="input__row">
                                    <input type="text" name="promocode" class="input" placeholder="Поле с промокодом">
                                </div>  
                                <button class="btn btn--purple w-all">Сохранить</button>
                            </div>
                            
                        </div>
                    </div><!--ppsettings__cols-->


                    {'!AjaxForm'|snippet:[
                        'snippet' => 'FormIt',
                        'form' => '@FILE chunks/forms/profile.company.settings.form.tpl',
                        'hooks' => 'profileSettingSave',
                        'validationErrorMessage' => 'В форме содержатся ошибки!',
                        'successMessage' => 'Настройки сохранены успешно!'
                     ]}
                
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}