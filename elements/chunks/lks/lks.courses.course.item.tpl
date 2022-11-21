        {set $parent       = ($id | resource:'course_sub_category')}
        {set $course_category = ($id | resource:'course_category')}
        {set $course_sub_category = ($id | resource:'course_sub_category')}
        {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $id])}
        {set $for_ages  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'for_ages', 'resourceId' => $id])}        
        {set $for_levels  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'for_levels', 'resourceId' => $id])}
        {set $time  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $id])}
        {set $schedule  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $id])}
        {set $course_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_type', 'resourceId' => $id])}
        {set $course_sub_category_title = ($parent | resource:'pagetitle')}
        {set $course_title = ($id | resource:'course_group_title')}
        {set $course_owner = ($id | resource:'course_owner')}
        {set $format_of_study  = $id | resource: 'format_of_study'}
        

        
                <div class="cgcourse rollup-box">
                    <div class="cghead">
                        <div class="cgtitle"><a href="{$id | url}">{$course_title?:$pagetitle} / {$course_sub_category_title}</a></div>

                        <a href="#" class="link__more rollup-toggle">
                            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
                        </a>
                    </div>
                    <div class="rollup-tab">
                        <div class="cgcourse__cols">
                            <div class="cgcourse__info">
                                <div class="cgcourse__info-col">
                                    {if $course_title}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Группа</div>
                                        {$course_title}
                                    </div>
                                    {/if}
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
                                    
 
                                    {if $course_duration}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Длительность занятия в мин.</div>
                                        {$course_duration}
                                    </div>
                                    {/if}
                                   {if $num_lesson_per_week}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Кол-во занятий в неделю</div>
                                        {$num_lesson_per_week}
                                    </div>
                                    {/if}                                    
                                    {if $lesson_duration}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Длительность занятия в мин.</div>
                                        {$lesson_duration}
                                    </div>
                                    {/if}
                                    {if $_pls['tv.format_of_study']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Формат</div>
                                            {switch $_pls['tv.format_of_study']}
                                                {case 'individual'}
                                                     индивидуальные
                                                {case 'group'}
                                                    групповые
                                            {/switch}
                                    </div>
                                    {/if}
                                    {if $_pls['tv.form_of_study']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Форма</div>
                                            {switch $_pls['tv.form_of_study']}
                                                {case 'offline'}
                                                    офлайн
                                                {case 'online'}
                                                    онлайн
                                            {/switch}
                                    </div>
                                    {/if}                                    
                                </div>
                                <div class="cgcourse__info-col">
                                    {if $_pls['tv.num_people_in_group']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Количестве человек в группе</div>
                                            {$_pls['tv.num_people_in_group']}
                                    </div>
                                    {/if}                                    
                                    {if $schedule}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Дни</div>
                                        {$schedule}: 
                                    </div>
                                    {/if}
                                    {if $time}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Время</div>
                                        {$time}: 
                                    </div>
                                    {/if}
                                    {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$_pls['tv.course_address'], 'arr'=>1, 'index'=>1])}
                                    {if $addr[$_pls['tv.course_address']]}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Адрес</div>
                                            {$addr[$_pls['tv.course_address']]}
                                    </div>
                                    {/if}
                                    {if $for_ages}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Возраст</div>
                                        {$_pls['tv.for_ages_from']}-{$_pls['tv.for_ages_to']}
                                    </div>
                                    {/if}
                                    {if $for_levels}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Уровень</div>
                                        {$for_levels}
                                    </div>
                                    {/if}
                                    
                                    {if $_pls['tv.price_course']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Стоимость курса</div>
                                        {$_pls['tv.price_course']}
                                    </div>
                                    {/if}
                                    
                                    {if $_pls['tv.price_lesson']}
                                    <div class="cgcourse__item">
                                        <div class="cgcourse__item-label">Стоимость занятия</div>
                                        {$_pls['tv.price_lesson']}
                                    </div>
                                    {/if}
                                    
                                </div>
                            </div>

                            <div class="cgcourse__action">
                                <div class="cgcourse__action-buttons">
                                    <div class="input__row">
                                        <button class="btn w-all"><span><a href="{39 | url}?type=group&copy={$id}" style="color:#fff">Создать группу на основе шаблона</span></a></button>
                                    </div>
                                </div>
                                <div class="cgcourse__action-links">
                                    <a href="{39 | url}?type=course&edit={$id}" class="link__icon">
                                        <img src="assets/images/icons/edit-purple.svg" alt="Edit">
                                        <span>Редактировать</span>
                                    </a>
                                    <a href="{39 | url}?type=course&delete={$id}" class="link__icon link__icon--red">
                                        <img src="assets/images/icons/remove.svg" alt="Remove">
                                        <span>Удалить</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

