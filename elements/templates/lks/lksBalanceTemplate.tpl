{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk balance section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Баланс</h2>
                </div>
                <div class="balance__wrap">
                {*
                    <div class="balance__item">
                        <div class="balance__item-label">Остаток депозита на начало месяца</div>
                        <div class="balance__item-val">0</div>
                    </div>
                    *}
                    <div class="balance__item">
                        <div class="balance__item-label">Пополнения в текущем месяце</div>
                        <div class="balance__item-val">
                            {'!budgetReplenishmentMonth' | snippet: ['user_id' => $_modx->user.id]}</div>
                    </div>
                    {*
                    <div class="balance__item">
                        <div class="balance__item-label">Комиссия за договор</div>
                        <div class="balance__item-val">205</div>
                    </div>
                    *}
                    <div class="balance__item">
                        <div class="balance__item-label">Услуга обратный звонок</div>
                        <div class="balance__item-val">{'!callCnt' | snippet: ['school_id' => $_modx->user.id]}</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Свободный остаток</div>
                        <div class="balance__item-val">{'!budgetSum' | snippet: ['user_id' => $_modx->user.id]}</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Заблокировано средств</div>
                        <div class="balance__item-val">{'!budgetBlocked' | snippet: ['user_id' => $_modx->user.id]}</div>
                    </div>                    
                    {*
                    <div class="balance__item">
                        <div class="balance__item-label">Рекомендуемая сумма к пополнению</div>
                        <div class="balance__item-val">160</div>
                    </div>
                    *}


                    {set $r = '!checkUserFields'|snippet:[
                                'fields' => 'unp,bik,rs,bank,addr_bank', 
                                'user_id' => $_modx->user.id, 
                                'check' => 1]}

                    {if $r == 1}

                        {'!AjaxForm'|snippet:[
                                'snippet' => 'FormIt',
                                'form' => '@FILE chunks/forms/invoice.expose.form.tpl',
                                'hooks' => 'invoiceExpose',
                                'tpl'=>'@FILE chunks/invoice/invoice.table.tpl',
                                'validate' => 'payment:required',
                                'validationErrorMessage' => 'В форме содержатся ошибки!',
                                'successMessage' => 'Счет успешно заказан!'
                             ]}

                    {else}

                        Чтобы пополнить счет, необходимо заполнить <a href="{$modx->makeUrl(35)}" class="link">профиль школы</a>

                    {/if}

                </div>
            </div>
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}