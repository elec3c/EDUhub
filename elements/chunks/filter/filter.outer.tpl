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

            <div class="choose__title">Найдено <span id="mse2_total">{$total}</span> курсов</div>

            {if 'standard' | mobiledetect}
            
            	<form action="{$id | url}" method="post" id="mse2_filters" class="hide-tablet-sm">
                    <div class="choose__inputs choose__search">
            		    {$filters}
            	    </div>
                    <div class="section__buttons">
                	    <button type="reset" id="btnReset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                    	<button type="submit" class="btn btn-success pull-right hidden">Поиск</button>
                        {*
                        {if ('' | isloggedin : 'web') && !$_modx->user.urlico && !$_modx->user.manager}
                            <button type="button" class="btn "  id="btnSaveFilter" data-userid="{$_modx->user.id}">Сохранить</button>
                        {else}
                            <button type="button" class="btn "  data-open-popup="call_to_school" id="btnSaveFilter" data-userid="{$_modx->user.id}">Сохранить</button>
                        {/if}
                        *}
                    </div>            	
            	</form> 
            	
            {else}
                <form action="{$id | url}" method="post" id="mse2_filters" class="show-tablet-sm choose-filters">            	
                        {$filters}
            		    <div class="section__buttons">
                    		<button type="reset" id="btnReset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                    	</div>
                    	<div class="section__buttons">	
                    		<button type="submit" class="btn btn-success pull-right hidden">Поиск</button>
                    	</div>
                        {*
                        <div class="section__buttons">	
                            {include 'file:chunks/forms/fields/filter.save.button.tpl'}
                    	</div>
                        *}
                </form>
            {/if}

        </div>
    </section><!-- choose -->

        {'!BannerY' | snippet : [ 'position' => '1', 'tplWrapper'=>'@INLINE {$output}', 'tpl'=>'@FILE chunks/banner/banner.block.tpl']}
        
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
        
        
        
        




