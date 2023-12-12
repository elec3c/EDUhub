<section class="cmp_search section__mg section__first" id="mse2_mfilter">
    <div class="container">
        <div class="cmp_search__head section__head  mb--md">
            <h2 class="cmp_search__title section__title">Программы</h2>

            <div class="cmp_search__nav">
                <ul>
                    <li><a href="camp-search-ex.html">Выездной</a></li>
                    <li class="current"><a href="camp-search.html">Городской</a></li>
                </ul>
            </div>
            <button class="cmp_filters__open js-filters-open"><span>Фильтры</span></button>
            <div class="cmp_search__tcount">Найдено <span id="mse2_total">{$total}</span> {$total | declension : 'вариант|варианта|вариантов'}</div>

        </div>

        <div class="cmp_search__cols">
            <div class="cmp_search__filters cmp_filters js-filters">
                <div class="cmp_filters__bg js-filters-close"></div>




                <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
                    <div class="cmp_filters__head">
                        <div class="cmp_filters__title">Фильтр</div>
                        <button class="cmp_filters__close js-filters-close">
                            <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M2 18.5L18 2.5" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                <path d="M18 18.5L2 2.5" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                            </svg>
                        </button>
                    </div>
                    {$filters}
                    {if $filters}
                        <div class="cmp_filters__buttons">
                            <button type="reset" class="cmp_filters__btnlink cmp_filters__btnlink--reset">{'mse2_reset' | lexicon}</button>
                            <button class="cmp_filters__btnlink" type="button">Показать на карте</button>
                        </div>
{*                        <div class="page-sidebar__footer">*}
{*                            <button type="reset" class="page-sidebar__btn btn hidden js-reset-filters">{'mse2_reset' | lexicon}</button>*}
{*                            <button class="page-sidebar__btn page-sidebar__btn-show btn btn--main js-hidden-filters hidden">Показать <span id="js-total-products"></span></button>*}
{*                            <button type="submit" class="page-sidebar__btn btn hidden">{'mse2_submit' | lexicon}</button>*}
{*                        </div>*}
                    {/if}
                </form>









{*                <form action="" method="post" id="mse2_filters" class="cmp_filters__inner">*}
{*                    <div class="cmp_filters__head">*}
{*                        <div class="cmp_filters__title">Фильтр</div>*}
{*                        <button class="cmp_filters__close js-filters-close">*}
{*                            <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">*}
{*                                <path d="M2 18.5L18 2.5" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>*}
{*                                <path d="M18 18.5L2 2.5" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>*}
{*                            </svg>*}
{*                        </button>*}
{*                    </div>*}
{*                    <div class="cmp_filters__item">*}
{*                        <div class="cmp_filters__item-title">Возраст</div>*}
{*                        <div class="cmp_filters__item-content">*}
{*                            <select class="styler styler--camp" name="age" data-placeholder="выбрать">*}
{*                                <option value=""></option>*}
{*                                <option value="7">7</option>*}
{*                                <option value="8">8</option>*}
{*                                <option value="9">9</option>*}
{*                                <option value="10">10</option>*}
{*                                <option value="11">11</option>*}
{*                                <option value="12">12</option>*}
{*                            </select>*}
{*                        </div>*}
{*                    </div>*}
{*                    <div class="cmp_filters__item">*}
{*                        <div class="cmp_filters__item-title">Трансфер из</div>*}
{*                        <div class="cmp_filters__item-content">*}
{*                            <select class="styler styler--camp" name="city" data-placeholder="выбрать">*}
{*                                <option value=""></option>*}
{*                                <option value="Минск">Минск</option>*}
{*                                <option value="Брест">Брест</option>*}
{*                                <option value="Витебск">Витебск</option>*}
{*                                <option value="Гродно">Гродно</option>*}
{*                                <option value="Гомель">Гомель</option>*}
{*                                <option value="Могилёв">Могилёв</option>*}
{*                            </select>*}
{*                        </div>*}
{*                    </div>*}
{*                    <div class="cmp_filters__item item--50">*}
{*                        <div class="cmp_filters__item-title">Тематика</div>*}
{*                        <div class="cmp_filters__item-content">*}
{*                            <ul class="cmp_filters__list">*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="Языковой"><span>Языковой</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="IT"><span>IT</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="Дизайн"><span>Дизайн</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="Танцы"><span>Танцы</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="Спорт"><span>Спорт</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="theme" value="Блогерство"><span>Блогерство</span></label></li>*}
{*                            </ul>*}

{*                        </div>*}
{*                    </div>*}
{*                    <div class="cmp_filters__item item--last">*}
{*                        <div class="cmp_filters__item-title">Период</div>*}
{*                        <div class="cmp_filters__item-content">*}
{*                            <input type="text" name="date_from" class="input input--camp input--date datepicker-input" placeholder="Дата с">*}
{*                            <input type="text" name="date_to" class="input input--camp input--date datepicker-input" placeholder="Дата по">*}
{*                        </div>*}
{*                    </div>*}

{*                    <div class="cmp_filters__item item--50">*}
{*                        <div class="cmp_filters__item-title">Время занятий</div>*}
{*                        <div class="cmp_filters__item-content">*}
{*                            <ul class="cmp_filters__list">*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="time" value="Полный день"><span>Полный день</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="time" value="До обеда"><span>До обеда</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="time" value="После обеда"><span>После обеда</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                                    <label class="form__lcheck cmp_filters__list-label"><input type="checkbox" class="styler styler--camp" name="time" value="1 день"><span>1 день</span></label></li>*}
{*                                <li class="cmp_filters__list-item">*}
{*                            </ul>*}

{*                        </div>*}
{*                    </div>*}

{*                    <div class="cmp_filters__buttons">*}
{*                        <button class="cmp_filters__btnlink cmp_filters__btnlink--reset" type="reset">Сбросить все</button>*}
{*                        <button class="cmp_filters__btnlink" type="button">Показать на карте</button>*}
{*                    </div>*}
{*                </form>*}
            </div>

            <div class="cmp_search__content" id="pdopage">
                <div id="mse2_results">{$results}</div>
            </div>
            <div class="mse2_pagination">
                {'page.nav' | placeholder}
            </div>
        </div>
    </div>
</section><!--  -->