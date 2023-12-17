{'!pdoResources' | snippet: [
    'limit' => '24',
    'class' => 'UserFile',
    'loadModels' => 'UserFiles',
    'sortby'=>'rank',
    'sortdir'=>'ASC',
    'tpl' => '@INLINE:
        <div class="cmp_gallery__item">
            <a href="{$url}" data-fancybox="gallery">
                <img src="{$url | phpthumbon: \'w=570&h=330&q=100&zc=1\'}" alt="">
            </a>
        </div>
    ',
    'tplWrapper' => '@INLINE
        <section class="cmp_gallery  section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Фотогалерея</h2>
                </div>
                <div class="cmp_gallery__items">{$output}</div>
                <div class="cmp_gallery__star1 cmp_star"></div>
                <div class="cmp_gallery__star2 cmp_star cmp_star--120"></div>
            </div>
        </section>
    ',
    'list' => 'camps',
    'where' => [
        'UserFile.parent' => $_modx->resource.id
    ]
]}