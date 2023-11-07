<div class="cmp_progrlk">
    <div class="cmp_progrlk__photo"><img src="app/assets/images/camp/img-city.jpg" alt=""></div>
    <div class="cmp_progrlk__info">
        <div class="cmp_progrlk__title"><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></div>
        <div class="cmp_progrlk__action">
            <a href="{$_modx->makeUrl($id)}?edit=true" class="cmp_progrlk__action-link">
                <img src="app/assets/images/icons/edit-purple.svg" alt="">
                Редактировать
            </a>
            <a href="javascript:void(0)" class="cmp_progrlk__action-link js-delete-camp" data-open-popup="camp_delete" data-id-camp="{$id}">
                <img src="app/assets/images/icons/remove-purple.svg" alt="">
                Удалить
            </a>
        </div>
    </div>
    <div class="cmp_progrlk__buttons">
        <a href="camp-lk-create-group.html" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/add-circle.svg" alt=""><span>Добавить группу</span></a>
    </div>
</div>