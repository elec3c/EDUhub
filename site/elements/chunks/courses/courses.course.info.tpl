{set $page_id = $page_id ?: $res.id}

{set $course_owner                = $page_id | resource: 'course_owner'}
{set $course_group_title          = $page_id | resource: 'course_group_title'}
{set $course_category             = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_category', 'resourceId' => $page_id]))}
{set $course_sub_category         = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category', 'resourceId' => $page_id]))}
{set $course_sub_category_type    = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $page_id]))}
{set $course_type                 = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_type', 'resourceId' => $page_id]))}

{set $course_duration             = $page_id | resource: 'course_duration'}
{set $num_lesson_per_week         = $page_id | resource: 'num_lesson_per_week'}
{set $format_of_study             = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'format_of_study', 'resourceId' => $page_id]))}
{set $form_of_study               = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'form_of_study', 'resourceId' => $page_id]))}

{set $num_people_in_group         = $page_id | resource: 'num_people_in_group'}
{set $schedule                    = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $page_id]))}
{set $time                        = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $page_id]))}

{set $levels = ($_modx->runSnippet('!parseLevelsTV', ['resource_id' => $page_id]))}



<section class="lk compare section__mgb">
    <div class="container">
        <div class="compare__wrap ">
            <div class="compare__labels">
                <div class="compare__item">
                    <div class="compare__item-photo">
                        {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$course_owner}
                    </div>
                    <div class="compare__item-info">
                        <div class="compare__item-row">Название курса</div>
                        <div class="compare__item-row">Категория курса</div>
                        <div class="compare__item-row">Подкатегория курса</div>
                        <div class="compare__item-row">Направление</div>
                        <div class="compare__item-row">Особенности</div>
                        
                        <div class="compare__item-row">Длительность курса</div>
                        <div class="compare__item-row">Количество занятий в неделю</div>
                        <div class="compare__item-row">Формат обучения</div>
                        <div class="compare__item-row">Форма обучения</div>
                        
                        <div class="compare__item-row">Количество человек в группе</div>
                        <div class="compare__item-row">Расписание</div>
                        <div class="compare__item-row">Время</div>
                        <div class="compare__item-row">Уровень</div>
                    </div>
                </div>
            </div>
            <div class="compare__items">
                <div class=" compare-carousel swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="compare__item compare-item">
                                <div class="compare__item-photo"></div>
                                    <div class="compare__item-info">
                                        <div class="compare__item-row min">{$course_group_title?:'-'}</div>
                                        <div class="compare__item-row">{$course_category?:'-'}</div>
                                        <div class="compare__item-row">{$course_sub_category?:'-'}</div>
                                        <div class="compare__item-row">{$course_sub_category_type?:'-'}</div>
                                        <div class="compare__item-row">{$course_type?:'-'}</div>
                                        <div class="compare__item-row">{if $course_duration}{$course_duration} {$course_duration | declension : 'час|часа|часов'}{else}-{/if}</div>
                                        <div class="compare__item-row">{$num_lesson_per_week?:'-'}</div>
                                        <div class="compare__item-row">{$format_of_study?:'-'}</div>
                                        <div class="compare__item-row">{$form_of_study?:'-'}</div>
                                        <div class="compare__item-row min">{$num_people_in_group?:'-'}</div>
                                        <div class="compare__item-row">{$schedule?:'-'}</div>
                                        <div class="compare__item-row">{$time?:'-'}</div>
                                        <div class="compare__item-row">{$.php.ucfirst($levels['from'])}-{$.php.ucfirst($levels['to'])}</div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section><!-- lk -->