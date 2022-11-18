{set $page_id = $page_id ?: $res.id}
{set $promote = $_modx->runSnippet('promoteCheckLead', ['group_id'=>$page_id])}
<section class="section__mgb--md">
    <div class="detail__props">
        <div class="detail__props-title">Длительность обучения</div>
            {if $promote['lead'] > 0}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Старт курса </div>
                <div>{$_modx->resource.data_from  | date : "d.m.Y"}</div>
            </div>
            {/if}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Количество часов </div>
                <div>{$_modx->resource.course_duration} часов</div>
            </div>
            {if $_modx->resource.num_lesson_per_week && $_modx->resource.lesson_duration}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Интенсивность</div>
                <div>{$_modx->resource.num_lesson_per_week} занятие в неделю по {$_modx->resource.lesson_duration} минут</div>
            </div>
            {/if}
            {if $_modx->resource.data_from && $_modx->resource.data_to}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Дата старта</div>
                <div>с {$_modx->resource.data_from | date_format:"%e %B  %Y"} по {$_modx->resource.data_to | date_format:"%e %B %Y"}</div>
            </div>
            {/if}
    </div>
    <div class="detail__props">
        <div class="detail__props-title">Стоимость и скидки</div>
            {if $_modx->resource.price_course}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за весь курс</div>
                <div>{$_modx->resource.price_course} руб.</div>
            </div>
            {/if}                                
            {if $_modx->resource.price_lesson}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за 1 занятие</div>
                    <div>{$_modx->resource.price_lesson} руб.</div>
                </div>
            {/if}                     
            {if ($_modx->resource.sale) && ($promote['lead'] > 0)}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Скидка</div>
                    <div>{$_modx->resource.sale} руб.</div>
                </div>
            {/if}                                
            </div>
    <div class="detail__props">
                {if $_modx->resource.num_people_in_group}
                <div class="detail__props-title">Подробности</div>
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Количество человек в группе</div>
                    <div>{$_modx->resource.num_people_in_group}</div>
                </div>
                {/if}
                {if $_modx->resource.form_of_study}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Форма обучения</div>
                    <div>
                        {switch  $_modx->resource.form_of_study}
                            {case 'online'}
                                Онлайн-обучение
                            {case 'offline'}
                                Офлайн-обучение
                            {default}
                                Форма обучения не указана
                        {/switch}
                    </div>
                </div>
                {/if}
                {if ($_modx->resource.schedule) && ($promote['lead'] > 0)}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Расписание</div>
                    <div>{($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $page_id]))}</div>
                </div>
                {/if}
                {if ($_modx->resource.time) && ($promote['lead'] > 0)}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Время</div>
                    <div>{($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $page_id]))}</div>
                </div>
                {/if}                
                {if $_modx->resource.for_levels_from && $_modx->resource.for_levels_to}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Уровень</div>
                    <div>{$_modx->resource.for_levels_from}-{$_modx->resource.for_levels_to}</div>
                </div>
                {/if}
                {if $_modx->resource.for_ages_from && $_modx->resource.for_ages_to}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Возраст</div>
                    <div>{$_modx->resource.for_ages_from}-{$_modx->resource.for_ages_to} лет</div>
                </div>
                {/if}
                {if $_modx->resource.employment && $_modx->resource.course_category == 11}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Трудоустройство</div>
                    <div>{($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'employment', 'resourceId' => $page_id]))}</div>
                </div>
                {/if}                
            </div>
{if $_modx->resource.parent != 61}            

    {set $a =  $modx->runSnippet('getListCities', ['name'=>'city,district,metro', 'uid'=>$_modx->resource.course_address, 'arr'=>1, 'index'=>1])}
    {set $city_lat = ($_modx->resource.id | resource: 'course_city')}
    {set $region_lat = ($_modx->resource.id | resource: 'course_region')}
    {set $metro_lat = ($_modx->resource.id | resource: 'course_metro')}
                            
    {set $city = $_modx->runSnippet('getListCities', ['name' => 'city', 'arr'=>1])}
    {set $region = $_modx->runSnippet('getListCities', ['name' => 'districts', 'arr'=>1, 'city'=>$city[$city_lat]])}
    {set $metro = $_modx->runSnippet('getListCities', ['name' => 'metro', 'arr'=>1])}
                
    {if $city[$city_lat] || $region[$region_lat] || $metro[$metro_lat]}                
        <div class="detail__props">
                <div class="detail__props-title">Месторасположение</div>
            
                {if $.php.is_array($city) && $city[$city_lat]}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Город</div>
                    <div>{$city[$city_lat]}</div>
                </div>
                {/if}
                {if $.php.is_array($region) && $region[$region_lat]}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Район</div>
                    <div>{$region[$region_lat]}</div>
                </div>
                {/if}
                {if $.php.is_array($metro) && $metro[$metro_lat]}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Метро</div>
                    <div>{$metro[$metro_lat]}</div>
                </div>
                {/if}
        </div>
    {/if}        
{/if}
</section>