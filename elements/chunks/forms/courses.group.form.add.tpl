{set $pid = $.get.edit?:$.get.copy}
{*
{include 'file:chunks/courses/courses.course.info.tpl' page_id=$pid}
*}
<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="post" id="coursesGroupFormAdd">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="action" value="[[+fi.action]]" id="action"/>
    <input type="hidden" name="resource_id" value="[[+fi.id]]" />
    <input type="hidden" name="course_owner" value="{$_modx->user.id}" />
    <input type="hidden" name="pagetitle" value="[[+fi.pagetitle]]" id="pagetitle"/>
    <input type="hidden" name="type" value="{$.get.type}" />


    {set $levels = $_modx->runSnippet('parseLevelsTV', ['resource_id' => $pid])}

    <input type="hidden" name="course_group_title"  value="{$pid | resource: 'course_group_title'}"/>
    <input type="hidden" name="course_category"  value="{$pid | resource: 'course_category'}"/>
    <input type="hidden" name="course_sub_category"  value="{$pid | resource: 'course_sub_category'}"/>
    <input type="hidden" name="course_sub_category_type"  value="{$pid | resource: 'course_sub_category_type'}"/>
    <input type="hidden" name="course_type"  value="{$pid | resource: 'course_type'}"/>
    <input type="hidden" name="course_duration"  value="{$pid | resource: 'course_duration'}"/>
    <input type="hidden" name="num_lesson_per_week"  value="{$pid | resource: 'num_lesson_per_week'}"/>
    <input type="hidden" name="format_of_study"  value="{$pid | resource: 'format_of_study'}"/>
    <input type="hidden" name="form_of_study"  value="{$pid | resource: 'form_of_study'}"/>
    <input type="hidden" name="schedule"  value="{$pid | resource: 'schedule'}"/>
    <input type="hidden" name="time"  value="{$pid | resource: 'time'}"/>
    <input type="hidden" name="for_levels_from"  value="{$levels['from']}"/>
    <input type="hidden" name="for_levels_to"  value="{$levels['to']}"/>

    
    <div class="cadd__block">
        <div class="cadd__label">Начало обучения, длительность и количество человек в группе</div>
        <div class="cadd__inputs cadd__in2">
            <div class="cadd__input cadd__input--date">
                {include 'file:chunks/forms/fields/fields.courses.data_from.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.lesson_duration.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.num_people_in_group.tpl' req=1}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Возраст</div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.ages_from.tpl' req=1}
            </div>
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.ages_to.tpl' req=1}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Стоимость и скидки</div>
        <div class="cadd__inputs cadd__in4">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.price_course.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.price_lesson.tpl' req=0}
            </div>
            <div class="cadd__input w-210">
                {include 'file:chunks/forms/fields/fields.courses.sale.tpl' req=0}
            </div>
        </div>
    </div>
    
    {set $form_of_study =  $pid | resource: 'form_of_study'}
    {if $form_of_study != "online"}
    <div class="cadd__block" id="address">
        <div class="cadd__label">Адрес (<a target="_blank" style="color:blue;" target="blank" href="{$_modx->makeUrl(317)}">добавить новый адрес</a>)</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.location.address.tpl' req=0}
            </div>
        </div>
    </div>
    {/if}

    
    <div class="cadd__block">
        <div class="cadd__label">Описание</div>
        {include 'file:chunks/forms/fields/fields.courses.introtext.tpl' req=0}
    </div>
    
    
    {include 'file:chunks/forms/fields/fields.courses.days.tpl' req=0}
    
    
    
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>