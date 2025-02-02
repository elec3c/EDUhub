{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk balance section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Баланс</h2>
                </div>
                <div class="balance__cols">
                    
                    <div class="balance__col">
                        <div class="balance__col-title">Баланс</div>
                    
                    {set $budgetReplenishmentAgoMonth = '@FILE /snippets/budgetReplenishmentAgoMonth.php' | snippet : ['user_id' => $user_id]}
                    {set $budgetWriteOffAgoMonth = '@FILE /snippets/budgetWriteOffAgoMonth.php' | snippet : ['user_id' => $user_id]}
                    <div class="balance__item">
                        <div class="balance__item-label">Остаток депозита на начало месяца</div>
                        <div class="balance__item-val">
                        {if ($budgetReplenishmentAgoMonth >= 0) && ($budgetWriteOffAgoMonth <= 0) && ($budgetReplenishmentAgoMonth >= abs($budgetWriteOffAgoMonth))}
                            {$budgetReplenishmentAgoMonth + $budgetWriteOffAgoMonth} руб.
                        {else}
                            0 руб. 
                        {/if}
                        </div>
                    </div>





                    {set $budgetReplenishmentCurrMonth = '@FILE /snippets/budgetReplenishmentCurrMonth.php' | snippet : ['user_id' => $user_id]}
                    <div class="balance__item accord opened">
                        <div class="balance__item-label accord-toggle">
                            Пополнения в текущем месяце
                            {if $budgetReplenishmentCurrMonth > 0}
                            {set $budgetReplenishmentCurrMonthList = '@FILE /snippets/budgetReplenishmentCurrMonth.php' | snippet : ['user_id' => $user_id, 'arr'=>1]}
                            <ul class="accord-body" style="display: none;">
                                {set $i = 0}
                                {foreach $budgetReplenishmentCurrMonthList as $k=>$v}
                                {set $i = $i + 1}
                                    <li>{$i}) {$.php.date('d.m.Y H:i', $k)} &mdash; {$v} р.</li>
                                {/foreach}
                            </ul>
                            {/if}
                            
                        </div>
                        <div class="balance__item-val">
                            {$budgetReplenishmentCurrMonth} руб.
                        </div>
                    </div>
                    
                    {*
                    {set $budgetReplenishmentAgoMonth = '!budgetReplenishmentAgoMonth' | snippet: ['user_id' => $_modx->user.id]}
                    <div class="balance__item accord opened">
                        <div class="balance__item-label accord-toggle">
                            Пополнения в предыдущем месяце
                            {if $budgetReplenishmentAgoMonth > 0}
                            {set $budgetReplenishmentAgoMonthList = '!budgetReplenishmentAgoMonth' | snippet: ['user_id' => $_modx->user.id, 'arr'=>1]}
                            <ul class="accord-body" style="display: none;">
                                {set $i = 0}
                                {foreach $budgetReplenishmentAgoMonthList as $k=>$v}
                                {set $i = $i + 1}
                                    <li>{$i}) {$.php.date('d.m.Y H:i', $k)} &mdash; {$v} р.</li>
                                {/foreach}
                            </ul>
                            {/if}
                        </div>
                        <div class="balance__item-val">
                            {$budgetReplenishmentAgoMonth} руб.
                        </div>
                    </div>   
                    *}
                  
                    <div class="balance__item">
                        <div class="balance__item-label">Заблокировано средств</div>
                        <div class="balance__item-val">
                            {'!budgetBlocked' | snippet: ['user_id' => $user_id]} руб.
                        </div>
                    </div>  
                    
                  
                    {set $budgetWriteOffCurrMonth = '@FILE /snippets/budgetWriteOffCurrMonth.php' | snippet : ['user_id' => $user_id]}
                    <div class="balance__item accord opened">
                        <div class="balance__item-label accord-toggle">
                            Списано в текущем месяце
                            {if $budgetWriteOffCurrMonth < 0}
                            {set $budgetWriteOffCurrMonthList = '@FILE /snippets/budgetWriteOffCurrMonth.php' | snippet : ['user_id' => $user_id, 'arr'=>1]}
                            <ul class="accord-body" style="display: none;">
                                {set $i = 0}
                                {foreach $budgetWriteOffCurrMonthList as $k=>$v}
                                {set $i = $i + 1}
                                    <li>{$i}) {$.php.date('d.m.Y H:i', $k)} &mdash; {$v} р.</li>
                                {/foreach}
                            </ul>
                            {/if}
                        </div>
                        <div class="balance__item-val">
                            {$budgetWriteOffCurrMonth} руб.
                        </div>
                    </div>
                    
                    {*
                    {set $budgetWriteOffAgoMonth = '!budgetWriteOffAgoMonth' | snippet: ['user_id' => $_modx->user.id]}
                    <div class="balance__item accord opened">
                        <div class="balance__item-label accord-toggle">
                            Списано в предыдущем месяце
                            {if $budgetWriteOffAgoMonth < 0}
                            {set $budgetWriteOffAgoMonthList = '!budgetWriteOffAgoMonth' | snippet: ['user_id' => $_modx->user.id, 'arr'=>1]}
                            <ul class="accord-body" style="display: none;">
                                {set $i = 0}
                                {foreach $budgetWriteOffAgoMonthList as $k=>$v}
                                {set $i = $i + 1}
                                    <li>{$i}) {$.php.date('d.m.Y H:i', $k)} &mdash; {$v} р.</li>
                                {/foreach}
                            </ul>
                            {/if}
                        </div>
                        <div class="balance__item-val">
                            {$budgetWriteOffAgoMonth} руб.
                        </div>
                    </div>
                    *}
                    {*
                    <div class="balance__item">
                        <div class="balance__item-label">Услуга обратный звонок</div>
                        <div class="balance__item-val">
                            {'!callCnt' | snippet: ['school_id' => $_modx->user.id]}
                        </div>
                    </div>
                    *}
                    
                    <div class="balance__item">
                        <div class="balance__item-label">Свободный остаток</div>
                        <div class="balance__item-val">
                            {'@FILE /snippets/budgetSum.php' | snippet : ['user_id' => $user_id]} руб.
                        </div>
                    </div>

                    {set $r = '!checkUserFields'|snippet:[
                                'fields' => 'unp,bik,rs,bank,addr_bank', 
                                'user_id' => $user_id, 
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

                        Чтобы пополнить счет, необходимо заполнить <a href="{$modx->makeUrl(35)}{if $.get.user_id}?user_id={$.get.user_id}{/if}" class="link">профиль школы</a>

                    {/if}
                    </div>
                    
                    <div class="balance__col">
                        <div class="balance__col-title">Бонусные баллы</div>
                        <div class="balance__item">
                            <div class="balance__item-label">Остаток на начало месяца</div>
                            <div class="balance__item-val">0</div>
                        </div>
                        <div class="balance__item">
                            <div class="balance__item-label">Начислено в текущем месяце</div>
                            <div class="balance__item-val">60</div>
                        </div>
                        <div class="balance__item">
                            <div class="balance__item-label">Зарезервировано</div>
                            <div class="balance__item-val">0</div>
                        </div>
                        <div class="balance__item">
                            <div class="balance__item-label">Списано</div>
                            <div class="balance__item-val">0</div>
                        </div>
                        <div class="balance__item">
                            <div class="balance__item-label">Свободный остаток</div>
                            <div class="balance__item-val">60</div>
                        </div>
                    </div>
                    
                </div>
                <div class="balance__bottom">
                    Все подписки оплачиваются только средствами с Баланса. Бонусными баллами можно оплатить только комиссию за заключенные договоры <br>
                    Вознаграждение за заключенный договор списывается в первую очередь с баланса, если не хватает средств на балансе - списывается с бонусных баллов
                </div>
            </div>
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}