<p class="section__intro">В форме * &mdash; обозначены поля, обязательные для заполнения.</p>
<br>
<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="post" id="coursesCourseFormAdd">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="action" value="[[+fi.action]]" id="action"/>
    <input type="hidden" name="parent" value="61" id="parent"/>
    <input type="hidden" name="resource_id" value="[[+fi.id]]" />
    <input type="hidden" name="course_owner" value="{$_modx->user.id}" />
    <input type="hidden" name="pagetitle" value="[[+fi.pagetitle]]" id="pagetitle"/>
    <input type="hidden" name="type" value="{$.get.type}" />
    <div class="cadd__block">
        <div class="cadd__label">Название курса</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.group_title.tpl' req=1}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Общая информация</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.category.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl' req=1}
            </div>            
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.type.tpl' req=1}
            </div>
        </div>
    </div>

    <div class="cadd__block">
        <div class="cadd__label">Форма и формат обучения</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input w-1">
                {include 'file:chunks/forms/fields/fields.courses.form_of_study.tpl' req=0}
            </div>            
            <div class="cadd__input w-320 w-2">
                {include 'file:chunks/forms/fields/fields.courses.format_of_study.tpl' req=0}
            </div>
        </div>
    </div>
    
    
    <div class="cadd__block">
        <div class="cadd__label">Продолжительность</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.duration.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.num_lesson_per_week.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.lesson_duration.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.num_months_of_study.tpl' req=1}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Детали</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input w-320 w-2">
                {include 'file:chunks/forms/fields/fields.courses.time.tpl' req=0}
            </div>
            <div class="cadd__input w-220 w-2">
                {include 'file:chunks/forms/fields/fields.courses.schedule.tpl' req=0}
            </div>
            <div class="cadd__input w-220 w-2">
                {include 'file:chunks/forms/fields/fields.courses.num_people_in_group.tpl' req=1}
                
            </div>
        </div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.levels_from.tpl' req=1}
            </div>
            <div class="cadd__input w-320">
                {include 'file:chunks/forms/fields/fields.courses.levels_to.tpl' req=1}
            </div>
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.ages_from.tpl' req=1}
            </div>
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.ages_to.tpl' req=1}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Стоимость</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.price_course.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.price_course_month.tpl' req=1}
            </div>            
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.price_lesson.tpl' req=0}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Описание</div>
        {include 'file:chunks/forms/fields/fields.courses.introtext.tpl' req=0}
    </div>
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>