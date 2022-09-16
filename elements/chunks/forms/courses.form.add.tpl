<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="post" id="courseFormAdd">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="action" value="[[+fi.action]]" id="action"/>
    <!--<input type="hidden" name="parent" value="[[+fi.course_sub_category]]" id="parent"/>-->
    <input type="hidden" name="resource_id" value="[[+fi.id]]" />
    <input type="hidden" name="course_owner" value="{$_modx->user.id}" />
    <input type="hidden" name="pagetitle" value="[[+fi.pagetitle]]" id="pagetitle"/>

    <div class="cadd__block">
        <div class="cadd__label">Название группы курса</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.group_title.tpl'}
            </div>
        </div>
    </div>

    <div class="cadd__block">
        <div class="cadd__label">Общая информация</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.category.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.sub_category.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl'}
            </div>            
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.type.tpl'}
            </div>
        </div>
    </div>

    <div class="cadd__block">
        <div class="cadd__label">Продолжительность</div>
        <div class="cadd__inputs cadd__in2">
            <div class="cadd__input cadd__input--date">
                <input type="text" name="data_from" placeholder="Дата от" class="input input--date datepicker-input" value='[[+fi.data_from]]'>
            </div>
            <!--<div class="cadd__input cadd__input--date">
                <input type="text" name="data_to" placeholder="Дата до" class="input input--date datepicker-input"  value='[[+fi.data_to]]'>
            </div>-->
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.duration.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.num_lesson_per_week.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.lesson_duration.tpl'}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Детали</div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input w-1">
                {insert 'file:chunks/forms/fields/fields.courses.form_of_study.tpl'}
            </div>
            <div class="cadd__input w-320 w-2">
                {insert 'file:chunks/forms/fields/fields.courses.num_people_in_group.tpl'}
            </div>
        </div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.levels_from.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.levels_to.tpl'}
            </div>
            <div class="cadd__input w-210">
                {insert 'file:chunks/forms/fields/fields.courses.ages_from.tpl'}
            </div>
            <div class="cadd__input w-210">
                {insert 'file:chunks/forms/fields/fields.courses.ages_to.tpl'}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Стоимость и скидки</div>
        <div class="cadd__inputs cadd__in4">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.price_course.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.courses.price_lesson.tpl'}
            </div>
            <div class="cadd__input w-210">
                {insert 'file:chunks/forms/fields/fields.courses.sale.tpl'}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Месторасположение</div>
        <div class="cadd__inputs cadd__in5">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.location.city.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.location.region.tpl'}
            </div>
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.location.metro.tpl'}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Адрес</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {insert 'file:chunks/forms/fields/fields.location.address.tpl'}
            </div>
        </div>
    </div>    
    
    <div class="cadd__block">
        <div class="cadd__label">Описание</div>
        {insert 'file:chunks/forms/fields/fields.courses.introtext.tpl'}
    </div>
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>