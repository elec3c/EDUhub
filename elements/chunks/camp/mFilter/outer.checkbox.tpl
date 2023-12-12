{switch $filter}
    {case 'camp_class_time'}
        {set $title = 'Время занятий'}
    {case 'camp_subjects'}
        {set $title = 'Тематика'}
    {default}
        {set $title = 'Укажите заголовок в outer.checkbox.tpl'}
{/switch}
<div class="cmp_filters__item item--50">
    <div class="cmp_filters__item-title">{$title}</div>
    <div class="cmp_filters__item-content">
        <ul class="cmp_filters__list">{$rows}</ul>
    </div>
</div>