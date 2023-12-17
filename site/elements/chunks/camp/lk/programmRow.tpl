<div class="cmp_progrlk" data-id-camp="{$id}">
    <div class="cmp_progrlk__photo">
        {set $dataHero = '!getDataCamp' | snippet : [
            'id' => $id,
            'constructorId' => 3
        ]}
        {*{$dataHero['hero']['data']['image'] | phpthumbon : 'w=160&h=160&q=99&zc=1'}*}
        <img src="{$dataHero['hero']['data']['image']}" alt="">
    </div>
    <div class="cmp_progrlk__info">
        <div class="cmp_progrlk__title">
            <a href="{$_modx->makeUrl($id)}">{$pagetitle}</a>
            <div>
                {set $published = $id | resource  : 'published'}
                <button class="btn btn--xs {$published ? '': 'btn--gray'} js-change-status-camp" data-open-popup="campChangeStatus" data-status="{$published ? '1': '0'}">{$published ? 'Опубликован': 'Черновик'}</button>
            </div>
        </div>
        <div class="cmp_progrlk__action">
            <a href="{$_modx->makeUrl($id)}?edit=true" class="cmp_progrlk__action-link">
                <img src="app/assets/images/icons/edit-purple.svg" alt="">
                Редактировать
            </a>
            <a href="javascript:void(0)" class="cmp_progrlk__action-link js-delete-camp" data-open-popup="camp_delete">
                <img src="app/assets/images/icons/remove-purple.svg" alt="">
                Удалить
            </a>
        </div>
    </div>
    <div class="cmp_progrlk__buttons">
        <a href="{$_modx->makeUrl(2098)}?pid={$id}" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/eye.svg" alt=""><span>Просмотреть группы</span></a>
    </div>    
    <div class="cmp_progrlk__buttons">
        <a href="{$_modx->makeUrl(2049)}?pid={$id}" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/add-circle.svg" alt=""><span>Добавить группу</span></a>
    </div>
</div>