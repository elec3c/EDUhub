{set $page_id = $page_id ?: $res.id}
<section class="section__mgb--md">
    <div class="detail__props">
        <div class="detail__props-title">Длительность обучения</div>
            <div class="detail__props-item">
                <div class="detail__props-item__label">Старт курса </div>
                <div>{$_modx->resource.data_from  | date : "d.m.Y"}</div>
            </div>
            <div class="detail__props-item">
                <div class="detail__props-item__label">Количество часов </div>
                <div>{$_modx->resource.course_duration}</div>
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
                <div>{$_modx->resource.price_course}</div>
            </div>
            {/if}                                
            {if $_modx->resource.price_lesson}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за 1 занятие</div>
                    <div>{$_modx->resource.price_lesson}</div>
                </div>
            {/if}                                
            {if $_modx->resource.sale}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Скидка</div>
                    <div>{$_modx->resource.sale} %</div>
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
                    <div>{$_modx->resource.form_of_study}</div>
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
            </div>
    <div class="detail__props">
                <div class="detail__props-title">Месторасположение</div>
                {set $city = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_city', 'resourceId' => $page_id]))}
                {set $region = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_region', 'resourceId' => $page_id]))}
                {set $metro = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_metro', 'resourceId' => $page_id]))}
                                
                {if $city}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Город</div>
                    <div>{$city}</div>
                </div>
                {/if}
                {if $region}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Район</div>
                    <div>{$region}</div>
                </div>
                {/if}
                {if $metro}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Метро</div>
                    <div>{$metro}</div>
                </div>
                {/if}
            </div>
</section>