<div class="row msearch2" id="mse2_mfilter">
    <section class="choose section__mg-sm" id="choose">
        <div class="container">
            {if $_modx->resource.template == 7}        
            {include 'file:chunks/crumbs/crumbs.tpl'}
            <div class="section__head">
                <h2 class="section__title">{$_modx->resource.parent | resource:'pagetitle'} / {$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
            </div>
            {/if}
            {if $_modx->resource.template == 9}        
            <div class="section__head">
                <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
            </div>
            {/if}

            {if $.get.disableRefresh==1}
                <div class="choose__title">Найдено по запросу <span id="mse2_total">{$total}</span> {$total | declension : 'курс|курса|курсов'}</div>
            {else}
                <div class="choose__title">Найдено <span id="mse2_total">{$total}</span> {$total | declension : 'курс|курса|курсов'}</div>
            {/if}

            {if 'standard' | mobiledetect}
            
            	<form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="hide-tablet-sm" {if $.get.disableRefresh==1}style="display:none;"{/if}>
                    <div class="choose__block">
                        <div class="choose__inputs choose__search">
                            {$filters}
                        </div>
                    </div>                                 	    

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
                                            <button type="button" class="btn w-all" id="btnSaveFilter" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
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
                                                <button type="button" class="btn w-all" id="btnSaveFilter" data-userid="{$_modx->user.id}">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                                            </div>
                                        {else}
                                            <div class="choose__inputs-item choose__inputs-button">
                                                <button type="button" class="btn w-all" data-open-popup="call_to_school">{$_modx->config.btnFilterSave?:"Уведомить"}</button>
                                            </div>            
                                        {/if}            
                                        <div class="choose__inputs-item choose__inputs-button">
                                            <button type="reset" class="btn w-all" id="btnReset">{$_modx->config.btnFilterReset?:"Сбросить"}</button>
                                    </div>                        
                                </div>
                        </div>

                    	
                </form>
            {/if}

        </div>
    </section><!-- choose -->

{if !$.get.disableRefresh}
        {*'!BannerY' | snippet : [ 'position' => '1', 'tplWrapper'=>'@INLINE {$output}', 'tpl'=>'@FILE chunks/banner/banner.block.tpl']*}
{/if}
        
        <section class="courses section__mg--sm">
        <div class="container" id="mse2_results">
            {$results}
            <p>&nbsp;</p>
        </div>	
        <div class="mse2_pagination">
		    {$_modx->getPlaceholder('page.nav')}
	    </div>
    </section><!-- courses -->
</div>        
        
        
        
        




