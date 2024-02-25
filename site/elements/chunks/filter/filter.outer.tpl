{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}

{if $_modx->resource.template == 7}      
<script>
$(document).ready(function(){
   $('#sub_category-select-styler').css("visibility", "hidden");
});
</script>
{/if}
 
<div class="row msearch2" id="mse2_mfilter">
    <section class="choose section__mg-sm" id="choose">
        <div class="container">
            {if $_modx->resource.template == 7}        
            {include 'file:chunks/crumbs/crumbs.tpl'}
            {/if}
            <div class="section__head">
                <h1 class="section__title">
                    {if intval($.get.schools_id) && ($.get.schools_id | ismember : ['Organization'])}
                        {set $schoolsPageID = $_modx->runSnippet('!getSchoolsPageID', ['schools_id' => $.get.schools_id])}
                        {set $fullname   =  $schoolsPageID | resource: 'pagetitle'}
                    {/if}
                    {if $_modx->resource.h1}{$_modx->resource.h1}{else}{$_modx->resource.longtitle?:$_modx->resource.pagetitle}{/if} {$fullname}
                </h1>
            </div>

            {*if (($_modx->resource.template != 25) && ($_modx->resource.template != 24)) || ($_modx->resource.template == 9)*}
                {*set $total_text = 'программа|программы|программ'*}
                {*set $_modx->config.btnFilterSave = "Сообщить о новых программах"*}
            {*else*}
                {*set $total_text = 'курс|курса|курсов'*}
                {*set $_modx->config.btnFilterSave = "Сообщить о новых курсах"*}
            {*/if*}
            
            {if $_modx->resource.parent == 85 || $_modx->runSnippet('!pdoField', ['field'=>'parent','id' => $_modx->resource.id,'top'=>1]) == 85}
                {set $prefix = ", на которые идет набор слушателей"}
            {else}
                {set $prefix = ""}
            {/if}
            
            {if $.get.disableRefresh==1}
                <div class="choose__title">Найдено по запросу <span id="mse2_total">{$total}</span> {$total | declension : $total_text}</div>
            {else}
                <div class="choose__title">Найдено <span id="mse2_total">{$total}</span> {$total | declension : $total_text} {$prefix}</div>
            {/if}
            
            {if ($my_company_id > 0) && ($isCorporate)}
                <div class="buttons--3col">
                    {if $_modx->resource.id == 1386}
                        <a href="{18 | url}" class="btn btn--purple">Перейти в поиск по всем школам</a>
                    {/if}
                    {if $_modx->resource.id != 1386}
                    <a href="{1386 | url}" class="btn btn--purple">Просмотреть курсы с партнерскими скидками</a>
                    {/if}
                </div>                        
            {/if}            

            

            {if 'standard' | mobiledetect}
            	<form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="hide-tablet-sm choose-filters" {if $.get.disableRefresh==1}style="display:none;"{/if}>
            	    
                    {insert 'file:chunks/filter/filter.param.selected.tpl'}
            	    
                    <div class="choose__block">
                        <div class="choose__inputs choose__search">
                            {if $filters=='Нечего фильтровать'}
                                {insert 'file:chunks/filter/filter.courses.empty.text.tpl'}
                            {else}
                                {$filters}
                                {if $_modx->resource.template == 7} 
                                    {insert 'file:chunks/filter/filter.courses.sub_category.select.hidden.tpl'}
                                {/if}
                            {/if}
                        </div>
                    </div>                                 	    

                    {if $filters!='Нечего фильтровать'}
                    <div class="choose__block">
                                {*<div class="choose__inputs">
                                    <div id="msgSubmit" class="form-message" style="padding-bottom:20px;"></div>
                                </div>*}
                                {if !($_modx->resource.id in [1756])}
                                <div class="choose__inputs">            
                                    <div class="choose__inputs-item choose__inputs-button">
                                        <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                                    </div>
                                        {*if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager*}
                                            {*<div class="choose__inputs-item choose__inputs-button">
                                                <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                            </div>*}
                                        {*else*}
                                            {*<div class="choose__inputs-item choose__inputs-button">
                                                {*<button type="button" data-open-popup="call_to_school" class="btn w-all">{$_modx->config.btnFilterSave?:"Сообщить"}</button>*}
                                            {*</div> *}           
                                        {*/if*}            
                                    <div class="choose__inputs-item choose__inputs-button">
                                        <a href="" style="color: white;text-decoration: none;" class="btn w-all choose__clear js-choose-clear">{$_modx->config.btnFilterReset?:"Сбросить"}</a>
                                    </div>                        
                                {else}
                                <div class="choose__inputs">
                                    <div class="choose__inputs-item choose__inputs-button">
                                        <a class="btn w-all" href="{1756 | url}?schools_id={$.get.schools_id}">{$_modx->config.btnFilterReset?:"Сбросить"}</a>
                                    </div>
                                </div>
                                {/if}
                            </div>
                    </div>
                    {/if}
                    
            	
            	</form> 

            {else}
                <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="show-tablet-sm choose-filters" {if $.get.disableRefresh==1}style="display:none;"{/if}>            	
                
                        
                        {insert 'file:chunks/filter/filter.param.selected.tpl'}
                        
                
                        <div class="choose__block">
                            <div class="choose__inputs choose__search">
                                {if $filters=='Нечего фильтровать'}
                                    {insert 'file:chunks/filter/filter.courses.empty.text.tpl'}
                                {else}
                                    {$filters}
                                    {if $_modx->resource.template == 7} 
                                        {insert 'file:chunks/filter/filter.courses.sub_category.select.hidden.tpl'}
                                    {/if}
                                {/if}                                
                            </div>
                        </div>                            
                        
                        <div class="choose__block" style="margin-left:20px;margin-right:20px;">
                                    {*<div class="choose__inputs">
                                        <div id="msgSubmit" class="form-message"></div>
                                    </div>*}
                                    {if !($_modx->resource.id in [1756])}
                                    <div class="choose__inputs">            
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                                        </div>
                                        
                                            {*if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager*}
                                                {*<div class="choose__inputs-item choose__inputs-button">
                                                    <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                                </div>*}
                                            {*else*}
                                                {*<div class="choose__inputs-item choose__inputs-button">
                                                    <button type="button" class="btn w-all" data-open-popup="call_to_school">{$_modx->config.btnFilterSave?"":"Сообщить"}</button>
                                                </div>            *}
                                            {*/if*}            
                                            <div class="choose__inputs-item choose__inputs-button">
                                                <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
                                            </div>
                                        
                                    </div>
                                    {else}
                                    <div class="choose__inputs">
                                        <div class="choose__inputs-item choose__inputs-button">
                                        <a class="btn w-all" href="{1756 | url}?schools_id={$.get.schools_id}">{$_modx->config.btnFilterReset?:"Сбросить"}</a>
                                        </div>
                                    </div>
                                    {/if}
                        </div>
                </form>
            {/if}

        </div>
    </section><!-- choose -->

{if !$.get.disableRefresh}
        {*'!BannerY' | snippet : [ 'position' => '1', 'tplWrapper'=>'@INLINE {$output}', 'tpl'=>'@FILE chunks/banner/banner.block.tpl']*}
{/if}
        
        
    {include 'file:chunks/choose/choose.main.tpl'}

        
    <section class="courses section__mg--sm">
        <div class="container" id="mse2_results">
            {if $filters!='Нечего фильтровать'}
                {$results}
            <p>&nbsp;</p>
            {/if}
        </div>	
        <div class="mse2_pagination">
		    {$_modx->getPlaceholder('page.nav')}
	    </div>
    </section><!-- courses -->
</div>