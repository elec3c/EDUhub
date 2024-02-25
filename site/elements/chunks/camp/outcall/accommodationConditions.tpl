<section class="cmp_contacts section__mg">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Условия размещения</h2>
        </div>

        <div class="cmp_contacts__name">{$nameObject}</div>
        <div class="cmp_contacts__item item--addr">{$_modx->resource.camp_region}, {$_modx->resource.camp_outcall_address}, {$_modx->resource.camp_distance} км от областного центра</div>
        <div class="cmp_contacts__item cmp_contacts__lsite">
            <a href="{$websiteLink}" class="link" target="_blank">Наш сайт</a>
        </div>

        {'!pdoResources' | snippet: [
            'limit' => '24',
            'class' => 'UserFile',
            'loadModels' => 'UserFiles',
            'sortby'=>'rank',
            'sortdir'=>'ASC',
            'tpl' => '@INLINE:
            <div class="cmp_contacts__photos-item">
                <a href="{$url}" data-fancybox="gallery">
                    <img src="{$url | phpthumbon: \'w=570&h=330&q=100&zc=1\'}" alt="">
                </a>
            </div>
            ',
            'tplWrapper' => '@INLINE <div class="cmp_contacts__photos">{$output}</div>',
            'where' => [
                'UserFile.parent' => $_modx->resource.id,
                'UserFile.list' => 'campOutcall'
            ]
        ]}

        <div class="cmp_contacts__text">{$descriptionPlace}</div>
        <div class="cmp_contacts__props">
            {insert 'file:chunks/camp/data/meals.tpl'}{*Массив значений - Питание - return $mealsArray*}
            <ul>
                {if $_modx->resource.camp_rooms}
                    <li><span>Размещение:</span> {$_modx->resource.camp_rooms}х местные номера</li>
                {/if}
                <li><span>Питание:</span> {$mealsArray[$_modx->resource.camp_meals]}</li>
                {if $_modx->resource.camp_wc}
                    {set $wc = '@FILE /snippets/camps/getTvCheckboxes.php' | snippet : [
                        'nameTv' => 'camp_wc',
                        'resourceTv' => $_modx->resource.camp_wc,
                        'return' => 'name'
                    ]}
                    <li><span>Санузел, душ:</span> {$wc | join  : ', '| lower}</li>
                {/if}
                {insert 'file:chunks/camp/data/pool.tpl'}{*return $poolArray*}
                {if $_modx->resource.camp_pool}
                    <li><span>Бассейн:</span> {$poolArray[$_modx->resource.camp_pool] | lower}</li>
                {/if}
            </ul>
            <div class="cmp_contacts__star4 cmp_star cmp_star--60 star--cc"></div>
        </div>

        <div class="cmp_contacts__map">
            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Afca59626139b13645680feed2115e3134164a9b8a14dad86b0e6fbbd6e95694b&amp;width=100%25&amp;height=400&amp;lang=ru_RU&_v=20231102183229"></script>
        </div>

        <div class="cmp_contacts__star1 cmp_star cmp_star--60 star--cc"></div>
        <div class="cmp_contacts__star5 cmp_star"></div>
    </div>
    <div class="cmp_contacts__star3 cmp_star cmp_star--140"></div>
</section>