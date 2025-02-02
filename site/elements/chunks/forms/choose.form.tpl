{if 'standard' | mobiledetect}
<form action="{18 | url}" class="hide-tablet-sm" method="POST" id="mse2_filters">
<div class="choose__block">
    <div class="choose__block-title"> Я ищу {*&nbsp;&nbsp;&nbsp;<span style="color:red;">*если вы не выберете значения из какого-либо поля - вам покажут все результаты из этого поля</span>*}</div>
        <div class="choose__inputs grid">
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.category.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item  col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.sub_category_type.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-3">
                {include 'file:chunks/forms/fields/fields.courses.type.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-3">
                {include 'file:chunks/forms/fields/fields.courses.level.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-3">
                {include 'file:chunks/forms/fields/fields.courses.ages.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-3">
                {include 'file:chunks/forms/fields/fields.courses.form_of_study.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.format_of_study.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.schedule.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.time.tpl' style='styler--white'}
            </div>
        </div>

        <br>
        <div class="choose__block-title">Место обучения</div>
        <div class="choose__inputs grid">
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.location.city.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.location.region.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.location.metro.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item col-span-4">
                {*include 'file:chunks/forms/fields/fields.courses.data_from.tpl' style='styler--white'*}
            </div>
            {*<div class="choose__inputs-item col-span-4">
                {include 'file:chunks/forms/fields/fields.courses.continue.tpl' style='styler--white' hide=1}
            </div>*}
        </div>
        
        
        <div class="choose__block">
            <div class="choose__inputs">
                <div id="msgSubmit" class="form-message" style="padding-bottom:20px;padding-top:20px;"></div>
            </div>
            <div class="choose__inputs grid">            
                <div class="choose__inputs-item choose__inputs-button col-span-4">
                    <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                </div>
                {if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager}
                    <div class="choose__inputs-item choose__inputs-button col-span-4">
                        <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                    </div>
                {else}
                    <div class="choose__inputs-item choose__inputs-button col-span-4">
                        <button type="button" data-open-popup="call_to_school" class="btn w-all">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                    </div>            
                {/if}            
                <div class="choose__inputs-item choose__inputs-button col-span-4">
                    <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
            </div>                        
        </div>
        
</div>

    </div>
</form>
{else}
<form action="{18 | url}" class="show-tablet-sm choose-filters" method="POST" id="mse2_filters">
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
        <span class="t-opened"><b style="color:red;">Еще фильтры</b></span>
        <span class="t-closed"><b style="color:#000;">Свернуть фильтры</b></span>
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
        <div class="choose__inputs-item w-200">
            {include 'file:chunks/forms/fields/fields.courses.schedule.tpl' style='styler--white'}
        </div>
        <div class="choose__inputs-item w-230">
            {include 'file:chunks/forms/fields/fields.courses.time.tpl' style='styler--white'}
        </div>

        <div class="choose__block-title">Место обучения</div>
            <div class="choose__inputs-item w-230">
                {include 'file:chunks/forms/fields/fields.location.city.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.region.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-270">
                {include 'file:chunks/forms/fields/fields.location.metro.tpl' style='styler--white'}
            </div>
            <div class="choose__inputs-item w-210">
                {include 'file:chunks/forms/fields/fields.courses.continue.tpl' style='styler--white' hide=1}
            </div>            
            <div class="choose__inputs-item w-210">
                {*include 'file:chunks/forms/fields/fields.courses.data_from.tpl' style='styler--white'*}
            </div>
        </div>
        <div class="choose__block">
            <div class="choose__inputs">
                <div id="msgSubmit" class="form-message"></div>
            </div>
            <div class="choose__inputs">        
                <div class="choose__inputs-item choose__inputs-button">
                    <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                </div> 
                {if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager}
                    <div class="choose__inputs-item choose__inputs-button">
                        <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                    </div>
                {else}
                    <div class="choose__inputs-item choose__inputs-button">
                        <button type="button" data-open-popup="call_to_school" class="btn w-all">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                    </div>        
                {/if}        
                <div class="choose__inputs-item choose__inputs-button">
                    <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
                </div>
            </div>
        </div>            

    </form>
{/if}