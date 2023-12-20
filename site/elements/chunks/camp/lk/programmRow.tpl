<div class="cmp_progrlk" data-id-camp="{$id}">
    <div class="cmp_progrlk__photo">
        {set $dataHero = '!getDataCamp' | snippet : [
            'id' => $id,
            'constructorId' => 3
        ]}
        <img src="{$dataHero['hero']['data']['image'] | phpthumbon : 'w=160&h=160&q=99&zc=1'}" alt="">
    </div>
    <div class="cmp_progrlk__info">
        <div class="cmp_progrlk__title">
            <a href="{$_modx->makeUrl($id)}">{$pagetitle}</a>
            <div class="flex">
                {set $published = $id | resource  : 'published'}
                {set $campType = $id | resource  : 'camp_format'}
                <button class="btn btn--xs {$published ? '': 'btn--gray'} js-change-status-camp" data-open-popup="campChangeStatus" data-status="{$published ? '1': '0'}">{$published ? 'Опубликован': 'Черновик'}</button>
                <div class="btn btn--xs {if $campType === 'urban'} btn--purple{/if}{if $campType === 'outcall'} btn--blue{/if}">
                    {'@FILE /snippets/camps/getNameTv.php' | snippet : [
                        'nameTv' => 'camp_format',
                        'valueTv' => $campType
                    ]}
                </div>
            </div>
        </div>
        <div class="cmp_progrlk__action">
            <a href="{$_modx->makeUrl($id)}?edit=true&type={$campType}" class="cmp_progrlk__action-link">
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
        <a href="camp-lk-create-group.html" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/add-circle.svg" alt=""><span>Добавить группу</span></a>
    </div>
</div>