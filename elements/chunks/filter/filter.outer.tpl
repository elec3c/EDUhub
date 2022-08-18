

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

                
                <div class="choose__title">Результат поиска: <span class="text--orange">найдено <span id="mse2_total">[[+total:default=`0`]]</span> курсов</span></div>
       
            	<form action="[[~[[*id]]]]" method="post" id="mse2_filters" class="hide-tablet-sm">
                    <div class="choose__inputs choose__search">
            		[[+filters]]
            	    </div>
            	        
            		    <div class="section__buttons">
                    		[[+filters:isnot=``:then=`
                    			<button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                    			<button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                    		`]]
                	    </div>            	
            	
            	</form> 
                <!--<form action="" class="hide-tablet-sm">
                    <div class="choose__inputs choose__search">
                        <div class="choose__inputs-item">
                            <select name="category" data-placeholder="Категория курса" class="styler"
                                id="category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                    'parents'=>'85'
                                    'depth'=> 0,
                                    'tpl'=>'@CODE <option value="{$id}">{$menutitle}</option>{$wrapper}',
                                ]}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="sub_category" data-placeholder="Подкатегория курса"
                                class="styler" id="sub_category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                        'parents'=>'10'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="10" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                                {'!pdoResources' | snippet : [
                                        'parents'=>'11'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="11" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="level" data-placeholder="Уровень" class="styler"
                                id="level-select">
                                <option value=""></option>
                                <option value="zero" data-chained="10 11">Начальный</option>
                                <option value="junior" data-chained="11">Junior</option>
                                <option value="middle" data-chained="11">Middle</option>
                                <option value="senior" data-chained="11">Senior</option>
                                
                                <option value="a1" data-chained="10">A1</option>
                                <option value="a2" data-chained="10">A2</option>
                                <option value="b1" data-chained="10">B1</option>
                                <option value="b2" data-chained="10">B2</option>
                                <option value="c1" data-chained="10">C1</option>
                                <option value="c2" data-chained="10">C2</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="age" data-placeholder="Возраст" class="styler">
                                <option value=""></option>
                                <option value="14-17">14-17</option>
                                <option value="18-25">18-25</option>
                                <option value="25-35">25-35</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="form_of_study" data-placeholder="Форма обучения" class="styler">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '25']}
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
                            <select name="format_of_study" data-placeholder="Формат обучения" class="styler">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '36']}
                            </select>
                        </div>
                    
                        <div class="choose__inputs-item">
                            <select name="city" data-placeholder="Город" class="styler" 
                                id="city-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '40', 'chained'=>'minsk']}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="region" data-placeholder="Район" class="styler" 
                                id="region-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '41', 'chained'=>'minsk']}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="metro" data-placeholder="Метро" class="styler"
                                id="metro-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '42', 'chained'=>'minsk']}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <input type="data_from" placeholder="Дата с" class="input input--date datepicker-input">
                        </div>
                    </div>    
                </form> --> 
                
                                
                <!--<form action="" class="show-tablet-sm choose-filters">
                    <div class="choose__inputs-item">
                            <select name="category" data-placeholder="Категория курса" class="styler"
                                id="category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                    'parents'=>'85'
                                    'depth'=> 0,
                                    'tpl'=>'@CODE <option value="{$id}">{$menutitle}</option>{$wrapper}',
                                ]}
                            </select>
                    </div>
                    <div class="choose__inputs-item">
                            <select name="sub_category" data-placeholder="Подкатегория курса"
                                class="styler" id="sub_category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                        'parents'=>'10'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="10" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                                {'!pdoResources' | snippet : [
                                        'parents'=>'11'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="11" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                            </select>
                    </div>
                    <div class="choose__inputs-item">
                            <select name="level" data-placeholder="Уровень" class="styler"
                                    id="level-select">
                                    <option value=""></option>
                                    <option value="zero" data-chained="10 11">Начальный</option>
                                    <option value="junior" data-chained="11">Junior</option>
                                    <option value="middle" data-chained="11">Middle</option>
                                    <option value="senior" data-chained="11">Senior</option>
                                    
                                    <option value="a1" data-chained="10">A1</option>
                                    <option value="a2" data-chained="10">A2</option>
                                    <option value="b1" data-chained="10">B1</option>
                                    <option value="b2" data-chained="10">B2</option>
                                    <option value="c1" data-chained="10">C1</option>
                                    <option value="c2" data-chained="10">C2</option>
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
                            <select name="form_of_study" data-placeholder="Форма обучения" class="styler">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '25']}
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
                            <select name="format_of_study" data-placeholder="Формат обучения" class="styler">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '36']}
                            </select>
                        </div>
                    
                        <div class="choose__inputs-item">
                            <select name="city" data-placeholder="Город" class="styler" 
                                id="city-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '40', 'chained'=>'minsk']}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="region" data-placeholder="Район" class="styler" 
                                id="region-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '41', 'chained'=>'minsk']}
                            </select>
                        </div>
                        <div class="choose__inputs-item">
                            <select name="metro" data-placeholder="Метро" class="styler"
                                id="metro-select">
                                <option value=""></option>
                                {'!getValuesTV' | snippet: ['tvid' => '42', 'chained'=>'minsk']}
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
            
                [[+results]]
                
                <div class="mse2_pagination">
			        [[!+page.nav]]
		        </div>
            </div>	
        </section><!-- courses -->
</div>        
        
        
        
        




