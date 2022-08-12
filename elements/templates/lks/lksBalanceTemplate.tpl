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
                    <div class="balance__item">
                        <div class="balance__item-label">Остаток депозита на начало месяца</div>
                        <div class="balance__item-val">0</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Пополнения в текущем месяце</div>
                        <div class="balance__item-val">480</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Комиссия за договор</div>
                        <div class="balance__item-val">205</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Услуга обратный звонок</div>
                        <div class="balance__item-val">20</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Свободный остаток</div>
                        <div class="balance__item-val">275</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label">Рекомендуемая сумма к пополнению</div>
                        <div class="balance__item-val">160</div>
                    </div>
                    
                    <div class="balance__action">
                        <input type="text" name="summ" class="input" placeholder="Введите сумму">
                        <button class="btn">Заказать счет</button>
                    </div>
                </div>
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
