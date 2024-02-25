        {set $parent       = ($id | resource:'course_sub_category')}
        {set $course_category = ($id | resource:'course_category')}
        {set $course_sub_category = ($id | resource:'course_sub_category')}
        {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $id])}
        {set $for_levels  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'for_levels', 'resourceId' => $id])}
        {set $time  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $id])}
        {set $schedule  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $id])}
        {set $course_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_type', 'resourceId' => $id])}
        {set $course_sub_category_title = ($parent | resource:'pagetitle')}
        {set $course_title = ($id | resource:'course_group_title')}
        {set $course_owner = ($id | resource:'course_owner')}
        {set $format_of_study = ($id | resource:'format_of_study')}
        {set $form_of_study  = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'form_of_study', 'resourceId' => $id]))}
        {set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$id, 'arr'=>1])}
        {set $days_arr = $_modx->runSnippet('getValuesTV', ['tvid' => 69, 'arr' => 1])}
        {set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $id])}
        
        
        
        
        

                <div class="cgcourse rollup-box">
                    <div class="cghead">
                        <div class="cgtitle"><a href="{$id | url}">{$course_title?:$pagetitle}</a></div>

                        <a href="#" class="link__more rollup-toggle">
                            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
                        </a>
                    </div>

                    <div class="rollup-tab">
                        <div class="cgcourse__cols">
                            <div class="cgcourse__info">
                                <div class="cgcourse__info-col">
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Группа</div>
                                        {$course_title}
                                    </div>
                                    {if ($_pls['tv.data_from']) && ($_pls['tv.data_from'] | date_format:"%Y" != "2099")}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Дата старта</div>
                                        {$_pls['tv.data_from'] | date_format:"%e %B %Y"}
                                    </div>
                                    {/if}
                                    {if $course_category}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Категория</div>
                                        {$course_category | resource:'pagetitle'}
                                    </div>
                                    {/if}
                                    {if $course_sub_category}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Подкатегория</div>
                                        {$course_sub_category | resource:'pagetitle'}
                                    </div>
                                    {/if}
                                    {if $parent==44}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Направление</div>
                                        {$course_sub_category_type}
                                    </div>
                                    {/if}
                                    {if $course_type}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Особенности</div>
                                        {$course_type}
                                    </div>
                                    {/if}
                                </div>

                                
                                <div class="cgcourse__info-col">
                                    
                                    {if $form_of_study}
                                    {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$_pls['tv.course_address'], 'arr'=>1, 'index'=>1])}										
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Формат</div>
                                        {$form_of_study}
                                         {if $addr[$_pls['tv.course_address']]}<br> {$addr[$_pls['tv.course_address']]}{/if}
                                    </div>
                                    {/if}
                                    {if $schedule}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Дни</div>
										{$schedule}: 
										{foreach $days_arr as $k=>$v}
											{if $days[$k] == $v}
												{$k} |
											{/if}
										{/foreach}
                                    </div>
                                    {/if}
                                    {if $time} 
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Время</div>
										{$time}: 
										{foreach $days_arr as $k=>$v}                
											{set $prefix = $_modx->runSnippet('RU2LAT', ['str' => $k])}
											{if $days[$k] == $v}
												{set $days_period = $_modx->runSnippet('pdoField', ['field' => 'days_period_'~$prefix, 'id'=>$id])}
												{set $a = $.php.explode('||',$days_period)}
												{set $days_period_from = ($.php.strlen($a[0])==4)?('0'~$a[0]):($a[0])}
												{set $days_period_to = ($.php.strlen($a[1])==4)?('0'~$a[1]):($a[1])}
												{if $days_period_from && $days_period_to}
													{$k}: {$days_period_from}-{$days_period_to} |
												{/if}
											{/if}
										{/foreach}
                                    </div>
                                    {/if}
                                    {if $_pls['tv.price_course_month']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Стоимость в месяц</div>
                                        {$_modx->runSnippet('!formatMoney', ['number'=>$_pls['tv.price_course_month']])}  
                                    </div>
                                    {/if}
                                    {if $for_levels}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Уровень</div>
                                        {$for_levels}
                                    </div>
                                    {/if}
									{if ($_pls['tv.data_from']) && ($_pls['tv.data_from'] | date_format:"%Y" != "2099")}
										{set $maxLead = $_modx->runSnippet('!promoteCheckMaxLead', ['parent' => $parent, 'uid'=>$id])}
										{if $maxLead > 0}
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Продвижение в категории</div>
												<i><b>Максимальная комиссия</b> в этой категории сейчас <b style="color:red;">{$maxLead} рублей</b> за договор</i>
											</div>
										{else}
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Продвижение в категории</div>
												<i><b style="color:red;">Никто</b> не продвигает курсы в этой категории</i>
											</div>
										{/if}
										
										
										
										{if $.php.strtotime($_pls['tv.data_from']) > $.php.time()}
											{if $promote['lead'] > 0}
											
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Сейчас продвигается</div>
												<i>{$promote['lead']} {$promote['lead'] | declension : 'свободное место|свободных места|свободных мест'} с комиссией {$promote['commission']} рублей</i>
											</div>                                        
											
											{else}
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Продвижение отсутствует</div>
												<span style="color:red"><b>Не продвигается</b></span>
											</div>                                                              
											{/if}
										{else}
										
											{if $promote['lead'] > 0}
											
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Сейчас продвигается</div>
												<i>{$promote['lead']} {$promote['lead'] | declension : 'свободное место|свободных места|свободных мест'} с комиссией {$promote['commission']} рублей</i>
											</div>                                        
											
											{else}
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Продвижение отсутствует</div>
												<span style="color:red"><b>Не продвигается</b></span>
											</div>                                                              
											{/if}
											
											<div class="cgcourse__item">
												<div class="cgcourse__item-label">Состояние группы</div>
												<span style="color:green"><b>Начался курс</b></span>
											</div>
										{/if}
								    {/if}                                    
                                    
                                    
                                    
                                    
                                    
                                </div>
                            </div>

                            <div class="cgcourse__action">
                                <div class="cgcourse__action-buttons">
								{if $course_owner == $_modx->user.id }
									{*set $sale = $id | resource:'sale'*}
									{*if ($.php.intval($sale) > 0)*}
									<div class="cgcourse__action-buttons">
                                     {'!AjaxForm'|snippet:[
                                        'snippet' => 'FormIt',
                                        'form' => '@FILE chunks/forms/promote.form.tpl',
                                        'group_id' => $id,
                                        'school_id' => $course_owner,
                                        'format_of_study'=>$format_of_study,
                                        'hooks' => 'promoteBuy',
                                        'successMessage' => 'Продвижение прошло успешно!'
                                    ]}
									</div>
									{*else*}
										{*<p>Чтобы продвигать курс, Вы должны указать размер скидки</p>*}
									{*/if*}
								{/if}                                    

                                
                                <div class="cgcourse__action-links">
									<a href="{39 | url}?type=group&edit={$id}" class="link__icon">
										<img src="assets/images/icons/edit-purple.svg" alt="Edit">
										<span>Редактировать</span>
									</a>
									<a href="{39 | url}?type=group&delete={$id}" class="link__icon link__icon--red">
										<img src="assets/images/icons/remove.svg" alt="Remove">
										<span>Удалить</span>
									</a>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 