{set $page_id = $page_id ?: $res.id}

{set $sale  = $page_id | resource: 'sale'}
{set $format_of_study  = $page_id | resource: 'format_of_study'}
{set $price_course  = $page_id | resource: 'price_course'}
{set $price_lesson  = $page_id | resource: 'price_lesson'}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}

{set $course_owner  = $page_id | resource: 'course_owner'}

{set $course_template =  $page_id | resource: 'course_template'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}

{set $parent  = $page_id | resource: 'parent'}
{if $parent != 61}
    {set $isCourseTemplate = 0}
    {set $course_template =  $page_id | resource: 'course_template'}
{else}
    {set $isCourseTemplate = 1}
    {set $course_template =  $page_id}
{/if}


{if ($my_company_id > 0) && ($isCorporate) && ($course_template > 0)}
    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
{/if}

{if $partnershipDiscount['discount'] > 0}
    
    {set $discount          = trim($partnershipDiscount['discount'])}
    {set $discount_unit     = trim($partnershipDiscount['discount_unit'])}
    {set $discount_for_what = trim($partnershipDiscount['discount_for_what'])}
    {set $unit              = trim($partnershipDiscount['unit'])}
    {set $for_what          = trim($partnershipDiscount['for_what'])}
    
    {set $title_sale        = 'Партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}                                     
    
    {insert 'file:chunks/courses/courses.calc.discount.tpl'}
    
{elseif ($sale > 0) && ($price_course > $sale)}
    {set $isSale = 1}
    {set $discount = $sale}
    {set $price_course_sale = $price_course - $sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
    {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' (от стоимости курса)'}   
{else}
    {set $isSale = 0}
    {set $discount = "Нет скидки"}
{/if}

{set $price_course_format = $_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_course])}
{set $price_course_month_format = $_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_course_month])}
{set $price_lesson_format = $_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_lesson])}

{set $promote = $_modx->runSnippet('promoteCheckLead', ['group_id'=>$page_id])}
<section class="section__mgb--md">
    <div class="detail__props">
        <div class="detail__props-title">Длительность обучения</div>
            {if ($promote['lead'] > 0) && ($_modx->resource.data_from != '2099-01-01')}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Старт курса </div>
                <div>{$_modx->resource.data_from | date_format:"%d %B %Y"}</div>
            </div>
            {/if}
            {if $_modx->resource.num_months_of_study}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Количество месяцев обучения</div>
                <div>{$_modx->resource.num_months_of_study} {$_modx->resource.num_months_of_study | declension : 'месяц|месяца|месяцев'}</div>
            </div>
            {/if}
            {if $_modx->resource.course_duration}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Количество часов </div>
                <div>{$_modx->resource.course_duration} {$_modx->resource.course_duration | declension : 'час|часа|часов'}</div>
            </div>
            {/if}
            {if $_modx->resource.num_lesson_per_week && $_modx->resource.lesson_duration}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Интенсивность</div>
                <div>{$_modx->resource.num_lesson_per_week} {$_modx->resource.num_lesson_per_week | declension : 'занятие|занятия|занятий'} в неделю по {$_modx->resource.lesson_duration} {$_modx->resource.lesson_duration | declension : 'минуте|минутам|минут'}</div>
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
            {if $price_course}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за весь курс</div>
                <div>
                    {if !$price_course_sale_format && $price_course_format}
                        <span class="price">{$price_course_format}</span>
                    {elseif $price_course_sale_format && $price_course_format}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>
                    {elseif $price_course}
                        <span class="price">{$price_course}</span>
                    {/if}                    
                </div>
            </div>
            {/if}                                
            {set $isSaleFirstMonth = ($num_months_of_study <=1)?1:0}
            {if $_modx->resource.price_course_month}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость курса в месяц</div>
                <div>
                    {if $isSaleFirstMonth}
                        {if !$price_course_sale_format && $price_course_format}
                            <span class="price">{$price_course_format}</span>
                        {elseif $price_course_sale_format && $price_course_format}
                            <strike class="old-price">{$price_course_format}</strike>
                            <span class="new-price">{$price_course_sale_format}</span>
                        {elseif $price_course}
                            <span class="price">{$price_course}</span>
                        {/if}                                        
                        <br>
                        <span style="font-size:12px;">
                            {$title_sale}
                        <span>                        
                    {else}
                        <span class="price">{$price_course_month_format}</span>
                    {/if}                    
                </div>
            </div>
            {/if}            
            {if $_modx->resource.price_lesson}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за 1 занятие</div>
                    <div>
                        {if $price_lesson_format && $price_lesson_sale_format}
                            <strike class="old-price">{$price_lesson_format}</strike>
                            <span class="new-price">{$price_lesson_sale_format}</span>
                        {elseif $price_lesson_format && !$price_lesson_sale_format}
                            <span class="new-price">{$price_lesson_format}</span>
                        {else}
                            <span class="price">{$price_lesson_format}</span>
                        {/if}
                    </div>
                </div>
            {/if}        
            
            {if ( (($discount) && ($promote['lead'] > 0)) || ($isPartnership == 1) )}
            
            <div class="detail__props-item">
                <div class="detail__props-item__label">Скидка</div>
                    <div>
                        {if $discount > 0}
                            {floor($discount)~" руб."}<br>
                            <span style="font-size:12px;">
                                {$title_sale}
                            <span>
                        {else}
                            {$discount}<br>
                        {/if}
                    </div>
                </div>
            {/if}                                
            </div>
            <div class="detail__props">
                {if $_modx->resource.num_people_in_group}
                <div class="detail__props-title">Подробности</div>
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Мест в группе</div>
                    {if $_modx->resource.num_people_in_group == 1}
                        <div>Индивидуальные занятия</div>
                    {else}
                        <div>{$.php.intval($_modx->resource.num_people_in_group)}</div>
                    {/if}
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
                            {case 'online-micro'}
                                Онлайн микрокурсы (15-20 мин в день)
                            {case 'hybrid'}                    
                                Гибридное-обучение
                            {case 'recording'}
                                Обучение в записи
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
                {set $from = $_modx->runSnippet('!getValueKeyTV', ['name' => 'for_levels', 'curr' => $_modx->resource.for_levels_from])?:$_modx->resource.for_levels_from}
                {set $to = $_modx->runSnippet('!getValueKeyTV', ['name' => 'for_levels', 'curr' => $_modx->resource.for_levels_to])?:$_modx->resource.for_levels_to}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Уровень</div>
                    {if $from != $to}
                        <div>от {$from} до {$to}</div>
                    {else}
                         <div>{$from}</div>
                    {/if}
                </div>
                {/if}
                {if $_modx->resource.for_ages_from && $_modx->resource.for_ages_to}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Возраст</div>
                        <div>
                        {if $_modx->resource.for_ages_from <=17 && $_modx->resource.for_ages_to <=18}
                            {if $_modx->resource.for_ages_from}от {$_modx->resource.for_ages_from}{/if} {if $_modx->resource.for_ages_to}до {$_modx->resource.for_ages_to}{/if} {if $_modx->resource.for_ages_from && $_modx->resource.for_ages_to}{/if}
                            
                        {elseif $_modx->resource.for_ages_from <=17 && $_modx->resource.for_ages_to >=19}
                            {if $_modx->resource.for_ages_from}от {$_modx->resource.for_ages_from}{/if}
                        {elseif $_modx->resource.for_ages_from >=18}
                            {if $_modx->resource.for_ages_from}18+{/if}
                        {else}
                            Не указан
                        {/if}                    
                        </div>
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
    {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$_modx->resource.course_address, 'arr'=>1, 'index'=>1])}
                
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
                
                {if is_array($addr) && $addr[$_modx->resource.course_address]}
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Точный адрес</div>
                    <div>{$addr[$_modx->resource.course_address]}</div>
                </div>                
                {/if}                
                
                
                
                
        </div>
    {/if}        
{/if}
</section>