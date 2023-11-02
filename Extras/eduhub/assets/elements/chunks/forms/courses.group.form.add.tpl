{set $pid = $.get.edit?:$.get.copy}
{*
{include 'file:chunks/courses/courses.course.info.tpl' page_id=$pid}
*}
<p class="section__intro">В форме * &mdash; обозначены поля, обязательные для заполнения.</p>
<br>

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
    {*<input type="hidden" name="course_category" id="category-select" value="{$pid | resource: 'course_category'}"/>
    <input type="hidden" name="course_sub_category"  id="sub_category-select" value="{$pid | resource: 'course_sub_category'}"/>
    <input type="hidden" name="course_sub_category_type" id="sub_category_type-select" value="{$pid | resource: 'course_sub_category_type'}"/>
    <input type="hidden" name="course_type"  id="type-select"  value="{$pid | resource: 'course_type'}"/>*}
    <div style="display:none;">        
    {include 'file:chunks/forms/fields/fields.courses.category.tpl' req=1}
    {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' req=1}
    {include 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl' req=1}
    {include 'file:chunks/forms/fields/fields.courses.type.tpl' req=1}
    </div>
            
    <input type="hidden" name="course_duration"  value="{$pid | resource: 'course_duration'}"/>
    <input type="hidden" name="num_lesson_per_week"  value="{$pid | resource: 'num_lesson_per_week'}"/>
    <input type="hidden" name="num_months_of_study"  value="{$pid | resource: 'num_months_of_study'}"/>


    <div class="cadd__block">
        <div class="cadd__label">Начало обучения, длительность и количество человек в группе</div>
        <div class="cadd__inputs cadd__in1">
            
            
            <div class="cadd__input cadd__input--date">
                {include 'file:chunks/forms/fields/fields.courses.data_from.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.lesson_duration.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.courses.num_people_in_group.tpl' req=1}
            </div>
            
            
            {include 'file:chunks/forms/fields/fields.courses.continue.tpl' req=0}            
            
            
        </div>
    </div>
    

    <div class="cadd__block">
        <div class="cadd__label">Детали</div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input w-1">
                {include 'file:chunks/forms/fields/fields.courses.format_of_study.tpl' req=1}
            </div>            
            <div class="cadd__input w-320 w-2">
                {include 'file:chunks/forms/fields/fields.courses.form_of_study.tpl' req=1}
            </div>
            <div class="cadd__input w-220 w-2">
                {include 'file:chunks/forms/fields/fields.courses.schedule.tpl' req=1}
            </div>
            <div class="cadd__input w-220 w-2">
                {include 'file:chunks/forms/fields/fields.courses.time.tpl' req=1}
            </div>
    </div>
    
    <br>
    
    <div class="cadd__block">
        <div class="cadd__label">Уровень</div>
        <div class="cadd__inputs cadd__in3">
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.levels_from.tpl' req=1}
            </div>
            <div class="cadd__input w-220">
                {include 'file:chunks/forms/fields/fields.courses.levels_to.tpl' req=1}
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
            <div class="cadd__input w-210">
                {include 'file:chunks/forms/fields/fields.courses.sale.tpl' req=0}
            </div>
        </div>
    </div>
    
    {set $form_of_study =  $pid | resource: 'form_of_study'}
    
    <div class="cadd__block" id="address">
        <div class="cadd__label">Адрес (<a target="_blank" style="color:blue;" target="blank" href="{$_modx->makeUrl(317)}">добавить новый адрес</a>)</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {if $form_of_study != "online"}
                    {include 'file:chunks/forms/fields/fields.location.address.tpl' req=1}
                {else}
                    {include 'file:chunks/forms/fields/fields.location.address.tpl' req=0}
                {/if}
            </div>
        </div>
    </div>
    

    
    <div class="cadd__block">
        <div class="cadd__label">Описание</div>
        {include 'file:chunks/forms/fields/fields.courses.introtext.tpl' req=0}
    </div>
    
    {include 'file:chunks/forms/fields/fields.courses.days.tpl' req=0}
    
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>