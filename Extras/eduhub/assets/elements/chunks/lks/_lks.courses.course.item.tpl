<div class="courses__scool lk__wraplr section__lr">
    <div class="courses__scool-info">
        {set $parent       = ($id | resource:'course_sub_category')}
        {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $id])}
        {set $course_sub_category_title = ($parent | resource:'pagetitle')}
        {set $course_title = ($id | resource:'course_group_title')}
        {set $course_owner = ($id | resource:'course_owner')}
        <div class="courses__scool-title"><a href="{$id | url}">{$course_title?:$pagetitle} / {$course_sub_category_title}</a></div>
        {if $parent==44}
        <div class="courses__scool-prop">
            <div class="courses__scool-prop__label">Направление</div>
            {$course_sub_category_type}
        </div>
        {/if}
        {include 'file:chunks/courses/courses.block.aside.tpl' page_id=$id}
    </div>
    <div class="courses__scool-action">
        <p>Чтобы продвигать весь курс, создайте на его основе группу без даты старта и адреса</p>
        <div class="section__buttons">
            <button class="btn btn--more">
                <span><a href="{39 | url}?type=group&copy={$id}">Создать группу на основе шаблона</span></a>
            </button>
        </div>        
        <div class="courses__scool-links">
            <a href="{39 | url}?type=course&edit={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Edit">
                Редактировать
            </a>
            <a href="{39 | url}?type=course&delete={$id}" class="courses__scool-remove">
                <img src="/assets/images/icons/remove.svg" alt="Remove">
                Удалить
            </a>
        </div>
    </div>
</div>