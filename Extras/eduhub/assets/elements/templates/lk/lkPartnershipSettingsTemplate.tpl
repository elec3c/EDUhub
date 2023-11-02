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
                
                {set $verified = $user_id | user:'verified'}
                {if $verified}
                <div class="ppsettings">
                    <div class="ppsettings__cols">
                        <div class="ppsettings__col">
                            
                            {set $partnership_join_offer = $user_id | user:'partnership_join_offer'}
                            {set $partnership_join_paper = $user_id | user:'partnership_join_paper'}
                            
                            {if !$partnership_join_offer && !$partnership_join_paper}
                            
                                {set $partnershipJoin = 0}
                                
                            {else}
                            
                                {set $partnershipJoin = 1}
                                
                            {/if}
                            
                            
                            {if !$partnershipJoin}
                                <form>
                                <div class="ppsettings__item">
                                    <div class="input__row">
                                        <b>Выберите способ присоединения к Партнерской программе</b>
                                    </div>
                                    <div class="input__row">
                                        <label class="form__lcheck">
                                            <input type="radio" name="partnership_join" value="paper" {if !$partnership_join_paper && $partnership_join_offer}checked{/if} class="styler">
                                            <span>Договор на бумажном носителе</span>
                                        </label>
                                        <label class="form__lcheck">
                                            <input type="radio" name="partnership_join" value="offer" class="styler" {if $partnership_join_paper && !$partnership_join_offer}checked{else}checked{/if}>
                                            <span>Публичная оферта</span>
                                        </label>          
                                        <br>
                                        <label class="form__lcheck" id="file_block">
                                            {'FileAttach' | snippet : ['makeURL'=>1, 'tpl'=>'file.attach.tpl']}
                                        </label>                                        
                                        <label class="form__lcheck" id="policy_block">
                                            <input type="checkbox" name="policy" value="1" class="styler" id="policy" {if $partnershipJoin}checked disabled{/if}>
                                            <span>С&nbsp;<a href="{1152 | url}" style="text-decoration:underline;" target="_blank;">офертой</a> ознакомлены и согласны</span>
                                        </label>                                        
                                    </div>                              
                                    <div class="input__row">
                                        <input class="btn {if !$partnershipJoin}btn--purple{else}btn--red{/if} w-all" id="btnPartnershipJoin" value="{if !$partnership_join_paper && $partnership_join_offer}Присоединиться к Партнерской программе{elseif $partnership_join_paper && !$partnership_join_offer}Присоединиться к Партнерской программе{else}Присоединиться к Партнерской программе{/if}" readonly/>
                                    </div>  
                                    <input type="hidden" id="partnershipJoinOffer" value="{$partnershipJoin}">
                                </div> 
                                </form>
                                {*<p class="section__intro">Чтобы далее видеть школы, открытые для предложений о партнерстве, необходимо присоединиться к оферте и не забыть обновить текущую страницу.</p>*}
                                
                            {else}
                                {set $employee_code = $user_id | user:'employee_code'}
                                <div class="ppsettings__item">
                                    <div class="input__row">
                                    {if !$employee_code}
                                    
                                        <input type="text" class="btn w-all generate-link-employee" data-user="{$user_id}" value="Сгенерировать ссылку для сотрудников" readonly>
                                    {else}
                                        <input type="text" class="btn btn--red w-all reset-link-employee" data-user="{$user_id}" value="Сбросить ссылку для сотрудников" readonly>
                                    {/if}
                                    </div>
                                    <div class="input__row">
                                        <input type="url" name="employee_link" class="input" placeholder="Тут появится ссылка" id="employee-code-{$user_id}" value="{if $employee_code!=''}{'!createEmployeeLink'|snippet:['user_id' => $user_id]}{/if}">
                                    </div>                                    
                                </div>
                            {/if}

                        </div>

                        <div class="ppsettings__col">
                            <!--<div class="ppsettings__item">
                                <div class="input__row">
                                    <button class="btn w-all">Сгенерировать промокод</button>
                                </div>    
                                <div class="input__row">
                                    <input type="text" name="promocode" class="input" placeholder="Поле с промокодом">
                                </div>  
                                <button class="btn btn--purple w-all">Сохранить</button>
                            </div>-->
                            <div class="ppsettings__item">
                                <div class="input__row">
                                    {'!AjaxForm'|snippet:[
                                        'snippet' => 'FormIt',
                                        'form' => '@FILE chunks/forms/profile.conclusion.agreement.form.tpl',
                                        'hooks' => 'profileConclusionAgreementSave',
                                        'validationErrorMessage' => 'В форме содержатся ошибки!',
                                        'successMessage' => 'Способы заключения договора  сохранены успешно!'
                                     ]}                                    
                                </div>    
                            </div>
                        </div>
                    </div><!--ppsettings__cols-->

                    {*if $partnershipJoinOffer*}
                    {'!AjaxForm'|snippet:[
                        'snippet' => 'FormIt',
                        'form' => '@FILE chunks/forms/profile.company.settings.form.tpl',
                        'hooks' => 'profileSettingSave',
                        'validationErrorMessage' => 'В форме содержатся ошибки!',
                        'successMessage' => 'Настройки сохранены успешно!'
                     ]}
                    {*/if*}
                
            </div>
            {else}
                {insert 'file:chunks/lk/lk.message.partnership.for.verified.tpl'}
            {/if}
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}