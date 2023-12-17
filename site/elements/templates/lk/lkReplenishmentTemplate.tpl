{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk replen section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мой профиль</h2>
                </div>

                <div class="lk__nav">
                    <ul>
                        <li class="active">Пополнение кабинетов школ</li>
                        <li><a href="lk-analitics.html">Аналитика</a></li>
                    </ul>
                </div>

                <form action="" class="replen__action">
                    <input type="text" class="input w-270" name="unp" placeholder="УНП">
                    <input type="text" class="input" name="summ" placeholder="Сумма">
                    <button class="btn w-all">Пополнить</button>
                </form>

                <div class="replen__filter">
                    <div class="replen__search">
                        <form action="" class="search__form">
                            <input type="text" class="input search__input" placeholder="Поиск по УНП">
                            <input type="submit" value="" class="search__btn">
                        </form>
                    </div>
                        
                    <div class="replen__dates">
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата с" class="input input--date datepicker-input">
                        </div>
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата по" class="input input--date datepicker-input">
                        </div>
                    </div>
                </div>

                <div class="replen__item">
                    <div class="replen__item-col replen__item-number">248623876</div>
                    <div class="replen__item-col replen__item-date">
                        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                         07.07.2022
                    </div>
                    <div class="replen__item-col replen__item-price">
                        <div class="replen__item-label show-tablet-sm">Сумма</div>
                        1000 руб.
                    </div>
                </div>
                <div class="replen__item">
                    <div class="replen__item-col replen__item-number">191258987</div>
                    <div class="replen__item-col replen__item-date">
                        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                        14.06.2022
                    </div>
                    <div class="replen__item-col replen__item-price">
                        <div class="replen__item-label show-tablet-sm">Сумма</div>
                        140 руб.
                    </div>
                </div>
                <div class="replen__item">
                    <div class="replen__item-col replen__item-number">175248963</div>
                    <div class="replen__item-col replen__item-date">
                        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                        22.05.2022
                    </div>
                    <div class="replen__item-col replen__item-price">
                        <div class="replen__item-label show-tablet-sm">Сумма</div>
                        80 руб.
                    </div>
                </div>
                <div class="replen__item">
                    <div class="replen__item-col replen__item-number">125478663</div>
                    <div class="replen__item-col replen__item-date">
                        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                        15.05.2022
                    </div>
                    <div class="replen__item-col replen__item-price">
                        <div class="replen__item-label show-tablet-sm">Сумма</div>
                        250 руб.
                    </div>
                </div>
                <div class="replen__item">
                    <div class="replen__item-col replen__item-number">125588796</div>
                    <div class="replen__item-col replen__item-date">
                        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                        11.05.2022
                    </div>
                    <div class="replen__item-col replen__item-price">
                        <div class="replen__item-label show-tablet-sm">Сумма</div>
                        200 руб.
                    </div>
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
