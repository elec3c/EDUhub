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

            {if 'standard' | mobiledetect}
            
            	<form action="{$id | url}" method="post" id="mse2_filters" class="hide-tablet-sm">
                    <div class="choose__inputs choose__search">
            		    {$filters}
            	    </div>
                    <div class="section__buttons">
                	    <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                    	<button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                    </div>            	
            	</form> 
            	
            {else}
            
                <form action="{$id | url}" method="post" id="mse2_filters" class="show-tablet-sm choose-filters">            	
                
                        {$filters}


                        <div class="choose__inputs-dopf choose-dopf-filters">
                            <div class="choose__inputs-item">
                                <select name="age" data-placeholder="Возраст" class="styler">
                                    <option value=""></option>
                                    <option value="14-17">14-17</option>
                                    <option value="18-25">18-25</option>
                                    <option value="25-35">25-35</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="form" data-placeholder="Форма обучения" class="styler">
                                    <option value=""></option>
                                    <option value="очное">очное</option>
                                    <option value="онлайн">онлайн</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="time" data-placeholder="Время обучения" class="styler">
                                    <option value=""></option>
                                    <option value="10-14">10-14</option>
                                    <option value="15-20">15-20</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="days" data-placeholder="Дни занятий" class="styler">
                                    <option value=""></option>
                                    <option value="пн-пт">пн-пт</option>
                                    <option value="сб-вс">сб-вс</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="format" data-placeholder="Формат обучения" class="styler">
                                    <option value=""></option>
                                    <option value="Формат обучения 1">Формат обучения 1</option>
                                    <option value="Формат обучения 2">Формат обучения 2</option>
                                    <option value="Формат обучения 3">Формат обучения 3</option>
                                </select>
                            </div>
                        
                            <div class="choose__inputs-item">
                                <select name="city" data-placeholder="Город" class="styler">
                                    <option value=""></option>
                                    <option value="Брест">Брест</option>
                                    <option value="Минск">Минск</option>
                                    <option value="Москва">Москва</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="region" data-placeholder="Район" class="styler">
                                    <option value=""></option>
                                    <option value="Район 1">Район 1</option>
                                    <option value="Район 2">Район 2</option>
                                    <option value="Район 3">Район 3</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <select name="metro" data-placeholder="Метро" class="styler">
                                    <option value=""></option>
                                    <option value="Молодёжная">Молодёжная</option>
                                    <option value="Немига">Немига</option>
                                    <option value="Пушкинская">Пушкинская</option>
                                </select>
                            </div>
                            <div class="choose__inputs-item">
                                <input type="text" placeholder="Дата с" class="input  input--date datepicker-input">
                            </div>
                        </div>
                        
                        
                        
            		    {*$filters*}
            	    
            	        
            		    <div class="section__buttons">
                    		
                    			<button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                    			</div>
                    	<div class="section__buttons">	
                    			<button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                    			</div>
                    		
                	    
                </form>
            {/if}
   

        	

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
        
        
        
        




