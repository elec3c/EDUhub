{set $page_id = $page_id ?: $res.id}


{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_template =  $page_id | resource: 'course_template'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}

{if ($my_company_id > 0) && ($isCorporate)}
    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
{/if}

{if $partnershipDiscount['discount'] > 0}

    {set $discount          = $partnershipDiscount['discount']}
    {set $discount_unit     = $partnershipDiscount['discount_unit']}
    {set $discount_for_what = $partnershipDiscount['discount_for_what']}
    {set $unit              = $partnershipDiscount['unit']}
    {set $for_what          = $partnershipDiscount['for_what']}
                        
                        
     {switch $for_what}
         {case 'course_fee'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
              {set $calc_discount = (($discount * $_modx->resource.price_course)/100.0)}
              {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
              {set $isSale = 1}
            {/if}                             
         {case 'first_month'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                 {set $calc_discount = (($discount * $_modx->resource.price_course)/100.0)}
                 {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
                 {if $_modx->resource.num_months_of_study == 1}
                     {set $isSaleFirstMonth = 1}
                     {set $isSale = 1}
                 {else}
                     {set $isSale = 1}
                 {/if}
            {/if}
         {case 'fixed_discount'}
             {if intval($discount) && ($unit == 'rub') && ($_modx->resource.price_course > $discount) }
                 {set $calc_discount = $discount} 
                 {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
                 {set $isSale = 1}
             {/if}
    {/switch}
            
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_partnership_sale])}
    {set $title_sale = 'Скидка партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
    {set $isPartnership = 1}
    
{elseif ($_modx->resource.sale > 0) && ($_modx->resource.price_course > $_modx->resource.sale)}
    {set $isSale = 1}
    {set $price_course_sale = $_modx->resource.price_course - $_modx->resource.sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
    {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' (от стоимости курса)'}   
{else}
    {set $isSale = 0}
{/if}

{set $price_course_format = $_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_course])}
{set $price_course_month_format = $_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_course_month])}

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
            {if $_modx->resource.price_course}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость за весь курс</div>
                <div>
                    {if $isSale}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>
                        <br>
                    {else}
                        <span class="price">{$price_course_format}</span>
                    {/if}                    
                </div>
            </div>
            {/if}                                
            {if $_modx->resource.price_course_month}                                
            <div class="detail__props-item">
                <div class="detail__props-item__label">Стоимость курса в месяц</div>
                <div>
                    {if $isSaleFirstMonth}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>
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
                    <div>{$_modx->runSnippet('!formatMoney', ['number'=>$_modx->resource.price_lesson])}</div>
                </div>
            {/if}        
            {set $sale = $isPartnership?$calc_discount:$_modx->resource.sale}
            {if ($sale) && (($promote['lead'] > 0) || ($isPartnership == 1))}
            <div class="detail__props-item">
                <div class="detail__props-item__label">Скидка</div>
                    <div>
                        {$sale} руб.
                        <br>
                        <span style="font-size:12px;">
                            {$title_sale}
                        <span><br>
                        
                    </div>
                    
                </div>
            {/if}                                
            </div>
            <div class="detail__props">
                {if $_modx->resource.num_people_in_group}
                <div class="detail__props-title">Подробности</div>
                <div class="detail__props-item">
                    <div class="detail__props-item__label">Количество человек в группе</div>
                    <div>{$.php.intval($_modx->resource.num_people_in_group)}</div>
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
                    {if $_modx->resource.for_ages_to != 100}
                        <div>{$_modx->resource.for_ages_from}-{$_modx->resource.for_ages_to} лет</div>
                    {else}
                        <div>от {$_modx->resource.for_ages_from} лет</div>
                    {/if}
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