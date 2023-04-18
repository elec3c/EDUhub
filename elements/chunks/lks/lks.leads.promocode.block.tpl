                {set $parent       = ($res_id | resource:'course_sub_category')}
                {set $course_category = ($res_id | resource:'course_category')}
                {set $course_sub_category = ($res_id | resource:'course_sub_category')}
                {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $res_id])}
                {set $for_levels  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'for_levels', 'resourceId' => $res_id])}
                {set $time  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $res_id])}
                {set $schedule  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $res_id])}
                {set $course_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_type', 'resourceId' => $res_id])}
                {set $course_sub_category_title = ($parent | resource:'pagetitle')}
                {set $course_title = ($res_id | resource:'course_group_title')}
                {set $course_owner = ($res_id | resource:'course_owner')}
                {set $format_of_study  = ($res_id | resource: 'format_of_study')}
                {set $form_of_study  = ($res_id | resource: 'form_of_study')}
                {set $data_from  = ($res_id | resource: 'data_from')}

                <div class="leads__block">
                    <div class="leads__header lk__wraplr section__lr"><a href="{$res_id | url}">{$course_title?:$pagetitle} / {$course_sub_category_title}</a></div>
                    
                    <div class="leads__item lk__wraplr section__lr">
                        {*<div class="leads__item-name show-desktop-sm">{$fullname}</div>*}

                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">{$fullname}</div>

                        <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                {if $mobilephone}<a href="tel:{$mobilephone}">{$mobilephone}</a>{else}не указан{/if}
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                {if $telegram}<a href="https://t.me/{$telegram}">{$telegram}</a>{else}не указан{/if}
                            </div>
                            {*<div class="leads__item-prop"><a href="#" class="link">Показать контакты</a></div>*}                            


                        </div>
                        <div class="leads__item-col hide-desktop-sm">


                            {if $course_category}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Категория</div>
                                {$course_category | resource:'pagetitle'}
                            </div>
                            {/if}
                            {if $course_sub_category}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Подкатегория</div>
                                {$course_sub_category | resource:'pagetitle'}
                            </div>
                            {/if}
                            {if ($course_sub_category == 44) && ($course_sub_category_type)}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Направление</div>
                                {$course_sub_category_type}
                            </div>
                            {/if}
                            


                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            
                            {if $for_levels}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                {$.php.str_replace(',',' &mdash; <br>',$for_levels)} 
                            </div>
                            {/if}
                            
                                              
                            {if $form_of_study}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма</div>
                                {switch $form_of_study}
                                    {case 'offline'}
                                        офлайн
                                    {case 'online'}
                                        онлайн
                                    {default}
                                        {$form_of_study}
                                {/switch}
                            </div>
                            {/if}
                            

     
                            {if $format_of_study}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат</div>
                                {switch $format_of_study}
                                    {case 'individual'}
                                         индивидуальные
                                    {case 'group'}
                                        групповые
                                    {default}
                                        {$format_of_study}                                        
                                {/switch}
                            </div>
                            {/if}

                            
                        </div>
                        <div class="leads__item-col">
                            
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            {if ($data_from) && ($data_from | date_format:"%Y" != "2099")}
                            {/if}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                    {$data_from | date_format:"%e %B %Y"}
                            </div>
                            
                            {if $time && $schedule}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                {$schedule} : <br>{$time}
                            </div>
                            {/if}
                            
    
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: {$code}">
                            <button class="btn promocode-dogovor-add" data-id="{$id}">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove a-promocode-delete" data-id="{$id}">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path
                                        d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                </svg>
                                <span class="show-tablet-sm">Удалить</span>
                            </button>
                        </div>
                    </div>
                </div>