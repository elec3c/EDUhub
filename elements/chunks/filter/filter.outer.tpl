<div class="row msearch2" id="mse2_mfilter">
    <section class="choose section__mg-sm" id="choose">
        <div class="container">
            {if $_modx->resource.template == 7}        
            {include 'file:chunks/crumbs/crumbs.tpl'}
                {/if}
            <div class="section__head">
                <h1 class="section__title">
                    {if $_modx->resource.h1}{$_modx->resource.h1}{else}{$_modx->resource.longtitle?:$_modx->resource.pagetitle}{/if}
                </h1>
            </div>


            {if $.get.disableRefresh==1}
                <div class="choose__title">Найдено по запросу <span id="mse2_total">{$total}</span> {$total | declension : 'курс|курса|курсов'}</div>
            {else}
                <div class="choose__title">Найдено <span id="mse2_total">{$total}</span> {$total | declension : 'курс|курса|курсов'}</div>
            {/if}

            {if 'standard' | mobiledetect}
            
            
            	<form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="hide-tablet-sm" {if $.get.disableRefresh==1}style="display:none;"{/if}>
                    <div class="choose__block">
                        <div class="choose__inputs choose__search">
                            {if $filters=='Нечего фильтровать'}
                                Вы можете оставить запрос на подбор нужного курса. 
                                <br> После чего мы займемся поиском подходящих курсов и как только появится курс с указанными параметрами - вам на email придет сообщение со ссылкой на этот курс.
                                Чтобы оставить запрос, укажите на главной странице в форме ПОИСКА какие параметры курса вас интересуют и нажмите кнопу "Сообщить о новых курсах".  
                                <br><a class="btn" href="{1 | url}">Оставить запрос</a>
                            {else}
                                {$filters}
                            {/if}
                        </div>
                    </div>                                 	    

                    {if $filters!='Нечего фильтровать'}
                    <div class="choose__block">
                                <div class="choose__inputs">
                                    <div id="msgSubmit" class="form-message" style="padding-bottom:20px;"></div>
                                </div>
                                <div class="choose__inputs">            
                                    <div class="choose__inputs-item choose__inputs-button">
                                        <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                                    </div>
                                    {if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager}
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                        </div>
                                    {else}
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button type="button" data-open-popup="call_to_school" class="btn w-all">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                        </div>            
                                    {/if}            
                                    <div class="choose__inputs-item choose__inputs-button">
                                        <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
                                </div>                        
                            </div>
                    </div>
                    {/if}
                    <br>
                    <div id="mse2_selected" style="background:#FFFFFF" class="choose__clit"></div>
            	
            	</form> 

            {else}
                <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="show-tablet-sm choose-filters" {if $.get.disableRefresh==1}style="display:none;"{/if}>            	
                        <div class="choose__block">
                            <div class="choose__inputs choose__search">
                                {$filters}
                            </div>
                        </div>                            
                        
                        <div class="choose__block" style="margin-left:20px;margin-right:20px;">
                                    <div class="choose__inputs">
                                        <div id="msgSubmit" class="form-message"></div>
                                    </div>
                                    <div class="choose__inputs">            
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button class="btn w-all">{$_modx->config.btnFilterSearch?:"Найти"}</button>
                                        </div>
                                        {if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager}
                                            <div class="choose__inputs-item choose__inputs-button">
                                                <button type="button" class="btn w-all" id="btnSaveFilter" style="background:#82DC74;" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                            </div>
                                        {else}
                                            <div class="choose__inputs-item choose__inputs-button">
                                                <button type="button" class="btn w-all" data-open-popup="call_to_school">{$_modx->config.btnFilterSave?:"Сообщить"}</button>
                                            </div>            
                                        {/if}            
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
                                    </div>                        
                                </div>
                        </div>
                        <br>
                        <div id="mse2_selected" style="background:#FFFFFF" class="choose__clit"></div>
                        
                </form>
            {/if}

        </div>
    </section><!-- choose -->

{if !$.get.disableRefresh}
        {*'!BannerY' | snippet : [ 'position' => '1', 'tplWrapper'=>'@INLINE {$output}', 'tpl'=>'@FILE chunks/banner/banner.block.tpl']*}
{/if}
        
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