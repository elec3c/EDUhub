{'!msFavorites.initialize' | snippet}
{set $ids = '!msFavorites.ids' | snippet:['type'=>'courses']}
<div id="pdopage" class="msfavorites-parent">
    <div class="rows">
        {'!pdoPage'|snippet:[
        'parents'=>'0',
        'resources'=> $ids,
        'limit'=>'6',
        'totalVar'=>'total',
        'tvPrefix' => '',
        'includeTVs' => 'course_owner',
        'tpl'=>'@FILE chunks/courses/courses.block.tpl',
        ]?:'<p class="section__intro">Вы еще не добавляли ни одного курса в избранный список</p>'}
    </div>
    {$_modx->getPlaceholder('page.nav')}
    {*
    [[!+total:gt=`0`:then=`
        <div class="section__buttons">
        <button class="btn btn-default btn--more msfavorites msfavorites-action"
                data-click
                data-data-list="default"
                data-data-type="courses"
                data-data-method="clear"
        >
            Очистить список
        </button></div>
    `:else=``]]
    *}
</div>