<section class="cmp_prices  cmp_sbg section__pd--mdx section__mg">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Цены и скидки</h2>
        </div>
        <div class="cmp_prices__text">{$description}</div>
        <div class="cmp_prices__items">
            <div class="cmp_prices__item">
                <div class="cmp_prices__item-title">Цены</div>
                {'!pdoResources' | snippet: [
                    'frontend_css' => '',
                    'class' => 'pageBlock',
                    'loadModels' => 'pageBlocks',
                    'sortby' => 'rank',
                    'sortdir' => 'asc',
                    'limit' => 1,
                    'tpl' => '@FILE chunks/camp/city/pricesAndDiscountsList.tpl',
                    'where' => [
                        'resource_id' => $_modx->resource.id,
                        'constructor_id' => 10,
                        'active' => 1
                    ],
                ]}
            </div>
            <div class="cmp_prices__item">
                <div class="cmp_prices__item-title">Скидки</div>

                <div class="cmp_prices__item-row">
                    <div class="cmp_prices__item-label"><span>Скидка для сотрудников компаний - партнеров</span></div>
                    <div class="cmp_prices__item-values">
                        <div class="cmp_prices__item-val">
                            <div class="cmp_prices__item-current">{$staffDiscountPrice} руб</div>
                        </div>
                    </div>
                </div>
                <div class="cmp_prices__item-row">
                    <div class="cmp_prices__item-label"><span>Скидка для пользователей сайта</span></div>
                    <div class="cmp_prices__item-values">
                        <div class="cmp_prices__item-val">
                            <div class="cmp_prices__item-current">{$usersDiscountPrice} руб</div>
                        </div>
                    </div>
                </div>

                {foreach $discounts as $item}
                    <div class="cmp_prices__item-row">
                        <div class="cmp_prices__item-label"><span>{$item.description}</span></div>
                        {if $item.price}
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">{$item.price} руб</div>
                                </div>
                            </div>
                        {/if}
                    </div>
                {/foreach}
            </div>
        </div>
        <div class="cmp_prices__star1 cmp_star cmp_star--160"></div>
        <div class="cmp_prices__star2 cmp_star cmp_star--160"></div>
    </div>
</section>