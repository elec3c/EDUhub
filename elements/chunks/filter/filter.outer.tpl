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

            <div class="choose__title">Результат поиска: <span class="text--orange">найдено <span id="mse2_total">{$total}</span> курсов</span></div>
   
        	<form action="{$id | url}" method="post" id="mse2_filters" class="hide-tablet-sm">
                <div class="choose__inputs choose__search">
        		    {$filters}
        	    </div>
                <div class="section__buttons">
            	    <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                	<button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                </div>            	
        	</form> 
        	
            <!--<form action="[[~[[*id]]]]" method="post" id="mse2_filters_sm" class="show-tablet-sm choose-filters">            	
                <div class="choose__inputs choose__search">
        		    [[+filters]]
        	    </div>
        	        
        		    <div class="section__buttons">
                		[[+filters:isnot=``:then=`
                			<button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                			<br/>
                			<button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                		`]]
            	    </div>
            </form>-->
            <!--<form action="" class="show-tablet-sm choose-filters">
                <div class="choose__inputs-item">
                        <select name="level" data-placeholder="Уровень" class="styler"
                                id="level-select">
                                <option value=""></option>
                        </select>
                </div>
                        
                <a href="#" class="choose__inputs-more choose-more-filters">
                    <span class="t-opened">Еще фильтры</span>
                    <span class="t-closed">Свернуть фильтры</span>
                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>                                        
                </a>
                <div class="choose__inputs-dopf choose-dopf-filters">
                    <div class="choose__inputs-item">
                        <select name="age" data-placeholder="Возраст" class="styler">
                            <option value=""></option>
                            <option value="3-7">3-7</option>
                            <option value="7-11">7-11</option>
                            <option value="11-17">11-17</option>
                            <option value="18+">18+</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item">
                        <input type="text" placeholder="Дата с" class="input input--white input--date datepicker-input">
                    </div>
                </div>    
            </form>  -->
        </div>
    </section><!-- choose -->
        {if $_modx->resource.template == 9}
        {include 'file:chunks/skillbox/skillbox.block.tpl'}
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
        
        
        
        




