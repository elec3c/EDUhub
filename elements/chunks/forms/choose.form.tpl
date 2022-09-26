{if 'standard' | mobiledetect}
<form action="{18 | url}" class="hide-tablet-sm" method="POST" id="chooseForm">
<div class="choose__block">
    <div class="choose__block-title">Я ищу</div>
        <div class="choose__inputs">
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.courses.category.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-320">
                {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-320">
                {include 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-250">
                {include 'file:chunks/forms/fields/fields.courses.type.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-250">
                {include 'file:chunks/forms/fields/fields.courses.level.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-200">
                {include 'file:chunks/forms/fields/fields.courses.ages.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-230">
                {include 'file:chunks/forms/fields/fields.courses.form_of_study.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270 w-230-tablet">
                {include 'file:chunks/forms/fields/fields.courses.format_of_study.tpl' style='styler--white'}
            </div>
            {*<div class="choose__inputs-item w-200">
                <select name="time" data-placeholder="Время обучения" class="styler styler--white">
                    <option value=""></option>
                    <option value="10-14">10-14</option>
                    <option value="15-20">15-20</option>
                </select>
            </div>
            <div class="choose__inputs-item w-230">
                <select name="days" data-placeholder="Дни занятий" class="styler styler--white">
                    <option value=""></option>
                    <option value="пн-пт">пн-пт</option>
                    <option value="сб-вс">сб-вс</option>
                </select>
            </div>*}
        </div>
    </div>
    <div class="choose__block">
        <div class="choose__block-title">Место и желаемая дата начала обучения</div>
        <div class="choose__inputs">
            <div class="choose__inputs-item w-230">
                {include 'file:chunks/forms/fields/fields.location.city.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.region.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.metro.tpl' style='styler--white'}
            </div>
            {*<div class="choose__inputs-item w-210">
                <input type="text" name="data_from" placeholder="Дата с"
                    class="input input--white input--date datepicker-input">
            </div>*}
            <div class="choose__inputs-item choose__inputs-button">
                <button class="btn w-all">ПОИСК</button>
            </div>
        </div>
    </div>
</form>
{else}
<form action="{18 | url}" class="show-tablet-sm choose-filters" method="POST" id="chooseForm">
    <div class="choose__block-title">Я ищу</div>
    <div class="choose__inputs-item w-300">
        {include 'file:chunks/forms/fields/fields.courses.category.tpl' style='styler--white'}
    </div>
    <div class="choose__inputs-item w-320">
        {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' style='styler--white'}
    </div>
    <div class="choose__inputs-item w-320">
        {include 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl' style='styler--white'}
    </div>
    <div class="choose__inputs-item w-250">
        {include 'file:chunks/forms/fields/fields.courses.type.tpl' style='styler--white'}
    </div>
                    
    <a href="#" class="choose__inputs-more choose-more-filters">
        <span class="t-opened">Еще фильтры</span>
        <span class="t-closed">Свернуть фильтры</span>
        <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round"
                stroke-linejoin="round" />
        </svg>
    </a>
    <div class="choose__inputs-dopf choose-dopf-filters">
        <div class="choose__inputs-item w-250">
            {include 'file:chunks/forms/fields/fields.courses.level.tpl' style='styler--white'}
        </div>
        <div class="choose__inputs-item w-200">
            {include 'file:chunks/forms/fields/fields.courses.ages.tpl' style='styler--white'}
        </div>
        <div class="choose__inputs-item w-230">
            {include 'file:chunks/forms/fields/fields.courses.form_of_study.tpl' style='styler--white'}
        </div>
        <div class="choose__inputs-item w-270 w-230-tablet">
            {include 'file:chunks/forms/fields/fields.courses.format_of_study.tpl' style='styler--white'}
        </div>
        {*<div class="choose__inputs-item w-200">
            <select name="time" data-placeholder="Время обучения" class="styler styler--white">
                <option value=""></option>
                <option value="10-14">10-14</option>
                <option value="15-20">15-20</option>
            </select>
        </div>
        <div class="choose__inputs-item w-230">
            <select name="days" data-placeholder="Дни занятий" class="styler styler--white">
                <option value=""></option>
                <option value="пн-пт">пн-пт</option>
                <option value="сб-вс">сб-вс</option>
            </select>
        </div>*}
        <div class="choose__block-title">Место и желаемая дата начала обучения</div>
            <div class="choose__inputs-item w-230">
                {include 'file:chunks/forms/fields/fields.location.city.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.region.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.metro.tpl' style='styler--white'}
            </div>
            {*<div class="choose__inputs-item w-210">
                <input type="data_from" placeholder="Дата с" class="input input--white input--date datepicker-input">
            </div>*}
        </div>
        <div class="choose__inputs-item choose__inputs-button">
            <button class="btn w-all">ПОИСК</button>
        </div>

    </form>
{/if}