<section class="detail__photos">
    <div class="section__head">
        <h2 class="section__title">Как проходят наши занятия</h2>
    </div>
    <div class="detail__photos-items">
        {set $user_id = $_modx->resource.scools_owner}
        {'!pdoResources' | snippet: [
            'limit'=>'33',
            'showLog'=>'0',
            'class'=>'UserFile',
            'loadModels'=>'UserFiles',
            'list'=>'school',
            'sortby'=>'rank',
            'sortdir'=>'ASC',
            'tpl'=>'@INLINE <div class="detail__photos-item"><img src="{$url}" alt="{$name}"></div>',
            'where' => [
              'UserFile.class' => 'modUser',
              'UserFile.parent' => $user_id
            ]
        ]}
    </div>
</section>